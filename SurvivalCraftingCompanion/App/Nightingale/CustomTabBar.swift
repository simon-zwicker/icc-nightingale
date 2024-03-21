//
//  CustomTabBar.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 21.03.24.
//

import SwiftUI

extension NightingaleView {

    @ViewBuilder
    func customTabBar(_ tint: Color, _ inactiveTint: Color) -> some View {
        
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                TabItem(
                    tint: tint,
                    inactiveTint: inactiveTint,
                    tab: tab,
                    animation: animation,
                    activeTab: $activeTab
                )
            }
        }
        .ignoresSafeArea()
        .padding(.horizontal, 15.0)
        .padding(.vertical, 10.0)
        .background(
            RoundedRectangle(cornerRadius: 20.0)
                .fill(.white)
                .opacity(0.25)
                .shadow(radius: 10.0)
                .frame(maxWidth: .infinity, minHeight: 110.0, maxHeight: 110.0)
                .offset(y: 34), alignment: .bottom
        )
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
}
