//
//  AuthService.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

protocol AuthServiceProtocol {
    static func register(email: String, name: String, birthDate: String, phoneNumber: String) async throws -> RegisterModel
    static func me() async throws -> UserModel
}

class AuthService: AuthServiceProtocol {
    static func register(email: String, name: String, birthDate: String, phoneNumber: String) async throws -> RegisterModel {
        let parameters: [String: Any] = [
            "email": email,
            "name": name,
            "birthDate": birthDate,
            "phoneNumber": phoneNumber]
        
        return try await APIClient.shared.request("/user", method: .post, parameters: parameters)
    }
    static func me() async throws -> UserModel {
        return try await APIClient.shared.request("/user/@me", authRequired: true)
    }
}
