//
//  NightingaleView.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

struct NightingaleView: View {

    // MARK: - Environments
    @Environment(AppUtils.self) var appUtils

    // MARK: - States
    @State var activeTab: Tab = .items

    // MARK: - Namespaces
    @Namespace var animation

    var body: some View {

        ZStack {
            TabView(selection: $activeTab) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    tab.view
                        .tag(tab)
                        .toolbar(.hidden, for: .tabBar)
                }
            }

            VStack {
                Spacer()
                customTabBar(.black, .black.opacity(0.2))
            }
        }
    }
}
