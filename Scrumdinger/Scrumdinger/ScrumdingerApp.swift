//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 24/01/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
