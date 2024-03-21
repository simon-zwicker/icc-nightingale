//
//  GlassList.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI

struct GlassList<T: Identifiable, Content: View>: View {

    var items: [T]
    let cornerRadius: CGFloat
    let delete: (IndexSet) -> Void
    let lastCellSpacing: CGFloat
    var rowContent: (T) -> Content

    init(
        items: [T],
        cornerRadius: CGFloat,
        onDelete: @escaping (IndexSet) -> Void = {_ in },
        lastCellSpacing: CGFloat = 25,
        @ViewBuilder rowContent: @escaping (T) -> Content
    ) {
        self.items = items
        self.cornerRadius = cornerRadius
        self.delete = onDelete
        self.lastCellSpacing = lastCellSpacing
        self.rowContent = rowContent
    }

    var body: some View {

        List {
            ForEach(items) { item in
                self.rowContent(item)
                    .glassCell(cornerRadius: cornerRadius)
            }
            .onDelete(perform: delete)
        }
        .listStyle(.plain)
    }
}
