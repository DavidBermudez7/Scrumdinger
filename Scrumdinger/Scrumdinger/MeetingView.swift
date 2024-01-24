//
//  ContentView.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 24/01/2024.
//

import SwiftUI
import CoreData

struct MeetingView: View {


    var body: some View {
        VStack {
            ProgressView(value:10, total: 15)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Ellapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityLabel("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
            
        }
        .padding()
    }
}


#Preview {
    MeetingView()
}
