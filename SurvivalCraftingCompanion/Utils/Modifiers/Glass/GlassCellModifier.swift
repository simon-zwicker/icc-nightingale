//
//  GlassCellModifier.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 21.03.24.
//

import SwiftUI

struct GlassCellModifier: ViewModifier {
    var cornerRadius: CGFloat
    var corners: UIRectCorner?

    func body(content: Content) -> some View {
        content
            .listRowBackground(GlassView(cornerRadius: cornerRadius, corners: corners, shadowRadius: 0))
    }
}
