//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 06/02/2024.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @Environment(\.scenePhase) private var scenePhase
    @State private var isPresentingNewScrumView = false
    let savedAction: ()->Void
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button {
                    isPresentingNewScrumView = true
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(isPresentingScrumView: $isPresentingNewScrumView, scrums: $scrums)
        }
        
        .onChange(of: scenePhase) { phase in
            if phase == .inactive { savedAction() }
        }
    }
}

#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData), savedAction: {})
}
