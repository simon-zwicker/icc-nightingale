//
//  TabItem.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case items = "tab-ngItems"
    case buildings = "tab-ngBuildings"
    case cards = "tab-ngCards"
    case trader = "tab-ngTrader"
    case more = "tab-ngMore"
}

extension Tab {

    var title: String {
        switch self {
        case .items: "Items"
        case .buildings: "Buildings"
        case .cards: "Cards"
        case .trader: "Trader"
        case .more: "More"
        }
    }

    var navTitle: String {
        switch self {
        case .items: "All Items"
        case .buildings: "Buildings"
        case .cards: "Cards"
        case .trader: "Trader"
        case .more: "More"
        }
    }

    @ViewBuilder
    var view: some View {
        switch self {
        case .items: GeneralItemsView()
        case .buildings: BuildingsView()
        case .cards: CardsView()
        case .trader: TradersView()
        case .more: MoreView()
        }
    }
}
