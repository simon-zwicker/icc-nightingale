//
//  APIError.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

struct APIError: Codable {
    let code: Int
    let message: String
    let data: [String: APIErrorDetail]
}

struct APIErrorDetail: Codable {
    let code: String
    let message: String
}
