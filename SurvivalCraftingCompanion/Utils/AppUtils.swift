//
//  AppUtils.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

@Observable
class AppUtils {

    var generalTypes: [GeneralType] = .init()
    var itemTypes: [ItemType] = .init()
    var stats: [Stat] = .init()
    var statValues: [StatValue] = .init()
    var items: [SCCItem] = .init()

    func imageWithFallback(_ imageName: String) -> Image {
        UIImage(named: imageName) == nil ? Image("noIcon"): Image(imageName)
    }

    @ViewBuilder
    var backgroundImage: some View {
        Image("nightingale")
            .scaledToFit()
            .blur(radius: 50)
            .ignoresSafeArea()
    }
}
