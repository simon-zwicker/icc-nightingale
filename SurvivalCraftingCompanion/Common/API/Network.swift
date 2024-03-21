//
//  Network.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 19.03.24.
//

import Foundation
import ZNetwork

struct Network {
    static private let env = APIEnvironment.develop
    static private let component = ZNetworkComponent(scheme: env.scheme, host: env.host, path: env.path)
    static private let network = ZNetwork(with: component)

    static var api: ZNetwork {
        get {
            Network.network.logLevel = .debug
            return Network.network
        }
    }
}
