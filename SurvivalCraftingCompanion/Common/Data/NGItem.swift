//
//  SCCItem.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class NGItem {
    let pbID: String
    let name: String
    let desc: String
    let itemTypeID: String
    let statIDs: [String]?
    let craftingRecipeID: String?
    let craftingStationIDs: [String]?
    let icon: String
    let generalTypeID: String

    init(
        _ id: String,
        name: String,
        desc: String,
        itemTypeID: String,
        statIDs: [String]? = nil,
        craftingRecipeID: String? = nil,
        craftingStationIDs: [String]? = nil,
        icon: String,
        generalTypeID: String
    ) {
        self.pbID = id
        self.name = name
        self.desc = desc
        self.itemTypeID = itemTypeID
        self.statIDs = statIDs
        self.craftingRecipeID = craftingRecipeID
        self.craftingStationIDs = craftingStationIDs
        self.icon = icon
        self.generalTypeID = generalTypeID
    }
}
