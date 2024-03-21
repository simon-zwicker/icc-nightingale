//
//  GlassView.swift
//  
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI

struct GlassView: View {

    let cornerRadius: CGFloat
    let corners: UIRectCorner?
    let fill: Color
    let opacity: CGFloat
    let shadowRadius: CGFloat

    init(
        cornerRadius: CGFloat,
        corners: UIRectCorner? = .allCorners,
        fill: Color = .white,
        opacity: CGFloat = 0.25,
        shadowRadius: CGFloat = 10.0
    ) {
        self.cornerRadius = cornerRadius
        self.corners = corners
        self.fill = fill
        self.opacity = opacity
        self.shadowRadius = shadowRadius
    }

    var body: some View {

        if let corners {
            Rectangle()
                .fill(fill)
                .opacity(opacity)
                .shadow(radius: shadowRadius)
                .cornerRadius(cornerRadius, corners: corners)
        } else {
            Rectangle()
                .fill(fill)
                .opacity(opacity)
                .shadow(radius: shadowRadius)
        }
    }
}

