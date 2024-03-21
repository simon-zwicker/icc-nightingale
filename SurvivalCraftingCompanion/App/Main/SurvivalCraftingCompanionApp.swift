//
//  SurvivalCraftingCompanionApp.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import SwiftUI
import SwiftData

@main
struct SurvivalCraftingCompanionApp: App {

    @State var appUtils: AppUtils = .init()

    var body: some Scene {
        WindowGroup {
            NightingaleView()
        }
        .environment(appUtils)
        .modelContainer(for: [
            GeneralType.self,
            ItemType.self,
            Stat.self,
            StatValue.self,
            NGItem.self
        ])
    }
}
