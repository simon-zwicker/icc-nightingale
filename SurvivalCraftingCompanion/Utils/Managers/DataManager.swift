//
//  DataManager.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import Foundation

@Observable
final class DataManager {

    static let shared = DataManager()

    func fetchGeneralTypes() async -> [GeneralType] {
        
        guard let objects = try? await APICaller
            .call(GeneralTypeObject.self, endpoint: .ngGeneralTypes) else { return [] }

        var transformed: [GeneralType] = .init()
        objects.items.forEach({
            transformed.append(
                GeneralType($0.id, name: $0.name, icon: $0.icon)
            )
        })

        return transformed
    }

    func fetchItemTypes() async -> [ItemType] {

        guard let objects = try? await APICaller.call(ItemTypeObject.self, endpoint: .ngItemTypes) else { return [] }

        var transformed: [ItemType] = .init()
        objects.items.forEach({
            transformed.append(
                ItemType($0.id, name: $0.name, weight: $0.weight, generalTypeID: $0.generaltype, icon: $0.icon)
            )
        })

        return transformed
    }

    func fetchStats() async -> [Stat] {

        guard let objects = try? await APICaller.call(StatObject.self, endpoint: .ngStats) else { return [] }

        var transformed: [Stat] = .init()
        objects.items.forEach({
            transformed.append(
                Stat($0.id, key: $0.key, unit: $0.unit)
            )
        })

        return transformed
    }

    func fetchStatValues() async -> [StatValue] {

        guard let objects = try? await APICaller.call(StatValueObject.self, endpoint: .ngStatValue) else { return  [] }

        var transformed: [StatValue] = .init()
        objects.items.forEach({
            transformed.append(
                StatValue($0.id, statID: $0.stat, value: $0.value)
            )
        })

        return transformed
    }

    func fetchItems() async -> [NGItem] {

        guard let objects = try? await APICaller.call(ItemObject.self, endpoint: .ngItems) else { return [] }

        var transformed: [NGItem] = .init()
        objects.items.forEach({
            transformed.append(
                NGItem(
                    $0.id,
                    name: $0.name, 
                    desc: $0.description,
                    itemTypeID: $0.itemtype,
                    statIDs: $0.stats,
                    craftingRecipeID: $0.craftingrecipe,
                    craftingStationIDs: $0.craftingstation,
                    icon: $0.icon
                )
            )
        })

        return transformed
    }
}
