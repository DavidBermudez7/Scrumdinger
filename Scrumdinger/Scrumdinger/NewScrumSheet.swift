//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 15/02/2024.
//

import SwiftUI

struct NewScrumSheet: View {
    @Binding var isPresentingScrumView: Bool
    @Binding var scrums: [DailyScrum]
    @State var newScrum = DailyScrum.emptyScrum
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar {
                    
                    ToolbarItem(placement: .cancellationAction) {
                        Button(action: {
                            isPresentingScrumView = false
                        }, label: {
                            Text("Dismiss")
                        })
                    }
                    
                    ToolbarItem(placement: .confirmationAction) {
                        Button(action: {
                            scrums.append(newScrum)
                            isPresentingScrumView = false
                        }, label: {
                            Text("Add")
                        })
                    }
                }
        }
        
    }
}

#Preview {
    NewScrumSheet(isPresentingScrumView: .constant(true), scrums: .constant(DailyScrum.sampleData))
}
