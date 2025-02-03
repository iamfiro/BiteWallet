//
//  AuthMacro.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

import Foundation
import Observation
import Alamofire

@Observable
class AuthMacro: ObservableObject {
    var isAuthenticated = false
    var me: UserModel?
    
    init() {
        Task {
            fetchMe()
        }
    }
    
    func register(email: String, name: String, birthDate: String, phoneNumber: String) async -> Bool {
        do {
            let response = try await AuthService.register(email: email, name: name, birthDate: birthDate, phoneNumber: phoneNumber)
            
            if KeychainHelper.update(token: response.accessToken, forAccount: "accessToken") {
            }
            
            isAuthenticated = true
            
            self.me = try await AuthService.me()
            
            return true
        } catch {
            print(error.localizedDescription)

            return true
        }
    }
    
    func logout() {
        if KeychainHelper.delete(forAccount: "accessToken") {
            isAuthenticated = false
        }
    }
    
    func fetchMe() {
        guard let token = KeychainHelper.read(forAccount: "accessToken") else {
            isAuthenticated = false
            return
        }
        
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(token)"
        ]
        
        AF.request("\(Network.baseUrl)/user/@me", method: .get, headers: headers)
        .validate()
        .responseDecodable(of: UserModel.self) { response in
            switch response.result {
            case .success(let data):
                self.isAuthenticated = true
                self.me = data
            case .failure(_):
                self.isAuthenticated = false
                self.me = nil
            }
        }
    }
}
