//
//  MoreView.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 21.03.24.
//

import SwiftUI

struct MoreView: View {

    // MARK: - Environment
    @Environment(AppUtils.self) var appUtils

    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear.background(appUtils.backgroundImage)

                VStack(alignment: .leading) {
                    Text("More")
                        .font(.system(size: 32.0, weight: .bold))
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
