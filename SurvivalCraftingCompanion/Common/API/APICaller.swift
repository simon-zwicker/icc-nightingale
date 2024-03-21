//
//  APICaller.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import Foundation
import ZNetwork

final class APICaller {

    static func call<T: Decodable & Encodable>(_ T: T.Type, endpoint: APIEndpoints) async throws -> APIResult<T> {
        let network = Networking<APIResult<T>>()
        network.endpoint = endpoint
        let result = await network.fetch()

        switch result {
        case .success(let object): return object
        case .failure(let error): throw error.self
        }
    }
}
