//
//  APIEndpoints.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import Foundation
import ZNetwork

// MARK: - Endpoint Definitions
enum APIEndpoints {
    // MARK: - Nightingale
    case ngItems
    case ngItemTypes
    case ngGeneralTypes
    case ngStats
    case ngStatValue
    case ngRecipe
    case ngIngredients
}

// MARK: - Endpoint Implementations
extension APIEndpoints: ZNetworkPoint {

    // MARK: - Path
    var path: String {
        switch self {
        case .ngItems: "/ng_items/records"
        case .ngItemTypes: "/ng_itemtypes/records"
        case .ngGeneralTypes: "/ng_generaltypes/records"
        case .ngStats: "/ng_stats/records"
        case .ngStatValue: "/ng_stat_value/records"
        case .ngRecipe: "/ng_recipe/records"
        case .ngIngredients: "/ng_ingredients/records"
        }
    }

    // MARK: - Method
    var method: ZNMethod { .GET }

    // MARK: - Header
    var headers: [ZNHeader] { [.ContentJson] }

    // MARK: - Parameters
    var parameters: [String : Any] { [:] }

    // MARK: - Encoding
    var encoding: ZNEncoding { .url }

    // MARK: - Boundary
    var boundary: String { "" }
}
