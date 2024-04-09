//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 09/04/2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Create new scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
