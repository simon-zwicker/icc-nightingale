//
//  UDManager.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import Foundation

final class UDManager {
    private enum Identifier: String {
        case sccCurrentGame
    }

    static var currentGame: String {
        get { UserDefaults.standard.string(forKey: Identifier.sccCurrentGame.rawValue) ?? ""  }
        set { UserDefaults.standard.setValue(newValue, forKey: Identifier.sccCurrentGame.rawValue)}
    }
}
