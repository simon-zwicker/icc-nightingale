//
//  ItemObject.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

struct ItemObject: Codable {
    let id: String
    let name: String
    let itemtype: String
    let craftingrecipe: String?
    let craftingstation: [String]?
    let stats: [String]?
    let description: String
    let icon: String
    let generaltype: String
}
