//
//  AuthModel.swift
//  BiteWallet
//
//  Created by 조성주 on 2/1/25.
//

struct RegisterModel: Decodable {
    let email: String
    let name: String
    
    let birthDate: String
    let phoneNumber: String
    
    let accessToken: String
}

struct UserModel: Decodable {
    let email: String
    let name: String
    
    let birthDate: String
    let phoneNumber: String
}
