//
//  APIResult.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

struct APIResult<T: Codable>: Codable {
    let page: Int
    let perPage: Int
    let totalPages: Int
    let totalItems: Int
    let items: [T]
}
