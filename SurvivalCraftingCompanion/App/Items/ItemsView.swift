//
//  ItemsView.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI
import SwiftData

struct ItemsView: View {

    // MARK: - Environment
    @Environment(\.modelContext) var context
    @Environment(AppUtils.self) var appUtils
    

    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear.background(appUtils.backgroundImage)

                GlassList(items: appUtils.generalTypes, cornerRadius: 10.0) { gt in
                    HStack {
                        Image(gt.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35.0, height: 35.0)

                        Text(gt.name)
                            .font(.system(size: 16.0))
                    }
                }
                .cornerRadius(20.0)
                .padding()
                .offset(y: 50.0)
            }
        }
    }
}
