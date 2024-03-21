//
//  DataManager.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import Foundation

@Observable
final class DataManager {


    static func fetchGeneralTypes() async -> [GeneralType] {
        
        guard let objects = try? await APICaller
            .call(GeneralTypeObject.self, endpoint: .ngGeneralTypes) else { return [] }

        var transformed: [GeneralType] = []
        objects.items.forEach({
            transformed.append(
                GeneralType($0.id, name: $0.name, icon: $0.icon)
            )
        })

        return transformed
    }
}
