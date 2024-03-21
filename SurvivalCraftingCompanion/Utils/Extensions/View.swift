//
//  View.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

extension View {

    func glass(
        cornerRadius: CGFloat,
        corners: UIRectCorner? = .allCorners,
        fill: Color = .white,
        opacity: CGFloat = 0.25,
        shadowRadius: CGFloat = 10.0
    ) -> some View {
        modifier(
            GlassModifier(
                cornerRadius: cornerRadius, 
                corners: corners,
                fill: fill,
                opacity: opacity,
                shadowRadius: shadowRadius)
        )
    }

    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }

    func glassCell(cornerRadius: CGFloat, corners: UIRectCorner? = nil) -> some View {
        modifier(GlassCellModifier(cornerRadius: cornerRadius, corners: corners))
    }
}
