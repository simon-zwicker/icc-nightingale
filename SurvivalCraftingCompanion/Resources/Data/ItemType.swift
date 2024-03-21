//
//  ItemType.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class ItemType {
    let pbID: String
    let name: String
    let weight: Double
    let statIDs: [String]?
    let generalTypeID: String
    let icon: String

    init(
        _ id: String,
        name: String,
        weight: Double,
        statIDs: [String]? = nil,
        generalTypeID: String,
        icon: String
    ) {
        self.pbID = id
        self.name = name
        self.weight = weight
        self.statIDs = statIDs
        self.generalTypeID = generalTypeID
        self.icon = icon
    }
}
