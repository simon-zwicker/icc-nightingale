//
//  Stat.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class Stat {
    let pbID: String
    let key: String
    let unit: String

    init(_ id: String, key: String, unit: String) {
        self.pbID = id
        self.key = key
        self.unit = unit
    }
}
