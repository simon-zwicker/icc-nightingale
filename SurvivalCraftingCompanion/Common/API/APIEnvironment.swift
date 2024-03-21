//
//  APIEnvironment.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

enum APIEnvironment {
    case develop
    case stage
    case prod
}

extension APIEnvironment {
    var scheme: String { "https" }
    var host: String { "scc.pockethost.io" }
    var path: String { "/api/collections" }
}
