//
//  GeneralType.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftData

@Model
class GeneralType {
    let pbID: String
    let name: String
    let icon: String

    init(_ id: String, name: String, icon: String) {
        self.pbID = id
        self.name = name
        self.icon = icon
    }
}
