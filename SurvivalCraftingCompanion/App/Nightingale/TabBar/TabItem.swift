//
//  TabItem.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

struct TabItem: View {

    // MARK: - Properties
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    var animation: Namespace.ID

    // MARK: - Bindings
    @Binding var activeTab: Tab

    // MARK: - States
    @State private var position: CGPoint = .zero
    @State private var tabPosition: CGPoint = .zero

    var body: some View {

        VStack(spacing: activeTab == tab ? 10.0: 5.0) {
            Image(tab.rawValue)
                .resizable()
                .scaledToFit()
                .frame(height: activeTab == tab ? 60.0: 30.0)
                .rotationEffect(.degrees(activeTab == tab ? -10: 0))

            Text(tab.title)
                .font(activeTab == tab ? .system(size: 14.0, weight: .bold): .system(size: 10.0, weight: .bold))
                .foregroundStyle(activeTab == tab ? tint: inactiveTint)
        }
        .frame(maxWidth: .infinity)
        .contentShape(.rect)
        .onTapGesture {
            activeTab = tab
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                position.x = tabPosition.x
            }
        }
    }
}
