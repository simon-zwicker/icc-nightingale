//
//  ItemCell.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 21.03.24.
//

import SwiftUI

struct ItemCell: View {

    let name: String
    let icon: String

    // MARK: - UI Body
    var body: some View {
        HStack(spacing: 20.0) {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 50.0, height: 50.0)
                .background(
                    Circle()
                        .fill(.gray.gradient)
                        .frame(width: 50.0, height: 50.0)
                )

            Text(name)
                .font(.system(size: 20.0, weight: .bold))
                .foregroundStyle(.white)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
        }
        .padding(.vertical, 10.0)
    }
}
