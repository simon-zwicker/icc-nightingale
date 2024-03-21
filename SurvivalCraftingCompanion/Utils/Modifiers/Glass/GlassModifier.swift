//
//  GlassModifier.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 21.03.24.
//

import SwiftUI

struct GlassModifier: ViewModifier {

    let cornerRadius: CGFloat
    let corners: UIRectCorner?
    let fill: Color
    let opacity: CGFloat
    let shadowRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .background {
                GlassView(
                    cornerRadius: cornerRadius,
                    corners: corners,
                    fill: fill,
                    opacity: opacity,
                    shadowRadius: shadowRadius
                )
            }
    }
}
