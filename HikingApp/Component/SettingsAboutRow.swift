//
//  SettingsAboutRow.swift
//  HikingApp
//
//  Created by Nejat Boy on 24.08.2025.
//

import SwiftUI

struct SettingsAboutRow: View {
    
    @State var label: String
    @State var icon: String
    @State var content: String
    @State var tint: Color
    
    
    var body: some View {
        let content = Text(content)
            .foregroundStyle(.primary)
            .fontWeight(.heavy)
        
        let image = ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 30, height: 30)
                .foregroundStyle(tint)
            Image(systemName: icon)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
        }
        
        return LabeledContent {
            content
        } label: {
            HStack {
                image
                Text(label)
            }
        }
    }
}

#Preview {
    List {
        SettingsAboutRow(label: "Application", icon: "apps.iphone", content: "Hike", tint: .blue)
    }
}
