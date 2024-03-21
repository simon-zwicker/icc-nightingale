//
//  ItemsView.swift
//  SurvivalCraftingCompanion
//
//  Created by Simon Zwicker on 20.03.24.
//

import SwiftUI
import SwiftData
import SwiftUIGlass

struct GeneralItemsView: View {

    // MARK: - Environment
    @Environment(\.modelContext) var context
    @Environment(AppUtils.self) var appUtils

    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear.background(appUtils.backgroundImage)

                VStack(alignment: .leading) {
                    Text("All Items")
                        .font(.system(size: 32.0, weight: .bold))
                        .foregroundStyle(.white)

                    List {
                        ForEach(appUtils.generalTypes, id: \.pbID) { general in
                            ItemCell(name: general.name, icon: general.icon)
                                .listRowBackground(Color.clear)
                        }
                    }
                    .listStyle(.plain)
                }
                .padding()
            }
        }
        .onAppear {
            Task {
                let descriptor = FetchDescriptor<GeneralType>(sortBy: [SortDescriptor(\.name)])

                let localData = try? context.fetch(descriptor)
                if let localData, localData.isEmpty {
                    let data = await DataManager.shared.fetchGeneralTypes()
                    data.forEach({
                        context.insert($0)
                    })
                }

                appUtils.generalTypes = (try? context.fetch(descriptor)) ?? []
            }
        }
    }
}
