//
//  ItemTypeObject.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

struct ItemTypeObject: Codable {
    let id: String
    let name: String
    let weight: Double
    let basicstats: [String]?
    let generaltype: String
    let icon: String
}
