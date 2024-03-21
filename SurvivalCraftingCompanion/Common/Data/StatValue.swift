//
//  StatValue.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class StatValue {
    let pbID: String
    let statID: String
    let value: Double

    init(_ id: String, statID: String, value: Double) {
        self.pbID = id
        self.statID = statID
        self.value = value
    }
}
