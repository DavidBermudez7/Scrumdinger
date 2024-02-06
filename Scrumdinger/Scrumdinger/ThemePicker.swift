//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by David Bermudez Hidalgo on 06/02/2024.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                Text(theme.name)
                    .tag(theme)
            }
        }
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
