//
//  Networking.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import Foundation
import ZNetwork

class Networking<T: Codable> {
    var endpoint: APIEndpoints?

    func fetch() async -> Result<T, ZNetworkError> {
        guard let endpoint else { return .failure(.invalidURL) }
        return await Network.api.run(endpoint, error: APIError.self)
    }
}
