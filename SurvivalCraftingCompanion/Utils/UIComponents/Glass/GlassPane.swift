//
//  GlassPane.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

struct GlassPane<Content: View>: View {

    let cornerRadius: CGFloat
    let corners: UIRectCorner?
    let fill: Color
    let opacity: CGFloat
    let shadowRadius: CGFloat
    let content: Content

    init(
        cornerRadius: CGFloat,
        corners: UIRectCorner? = .allCorners,
        fill: Color = .white,
        opacity: CGFloat = 0.25,
        shadowRadius: CGFloat = 10.0,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.cornerRadius = cornerRadius
        self.corners = corners
        self.fill = fill
        self.opacity = opacity
        self.shadowRadius = shadowRadius
        self.content = content()
    }

    var body: some View {

        ZStack {
            GlassView(cornerRadius: cornerRadius, corners: corners, fill: fill, opacity: opacity, shadowRadius: shadowRadius)
            content
        }
    }
}
