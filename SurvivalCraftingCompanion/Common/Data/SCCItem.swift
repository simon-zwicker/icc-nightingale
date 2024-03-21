//
//  SCCItem.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class SCCItem {
    let pbID: String
    let name: String
    let desc: String
    let itemTypeID: String
    let statIDs: [String]?
    let craftingRecipeID: String?
    let craftingStationIDs: [String]?
    let icon: String

    init(
        _ id: String,
        name: String,
        desc: String,
        itemTypeID: String,
        statIDs: [String]? = nil,
        craftingRecipeID: String? = nil,
        craftingStationIDs: [String]? = nil,
        icon: String
    ) {
        self.pbID = id
        self.name = name
        self.desc = desc
        self.itemTypeID = itemTypeID
        self.statIDs = statIDs
        self.craftingRecipeID = craftingRecipeID
        self.craftingStationIDs = craftingStationIDs
        self.icon = icon
    }
}
