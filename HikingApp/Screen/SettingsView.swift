//
//  SettingsView.swift
//  HikingApp
//
//  Created by Nejat Boy on 17.08.2025.
//

import SwiftUI

struct SettingsView: View {
    
    
    var body: some View {
        List {
            Header()
        }
    }
}



private struct Header: View {
    
    var body: some View {
        HStack {
            Spacer()
            firstImage
            title
            secondImage
            Spacer()
        }
        .foregroundStyle(foreground)
    }
    
    
    private var firstImage: some View {
        let font: Font = .system(size: 80, weight: .black)
        
        return Image(systemName: "laurel.leading")
            .font(font)
    }
    
    
    private var title: some View {
        let font: Font = .system(size: 64, weight: .black)
        
        return Text("Hike")
            .font(font)
    }
    
    
    private var secondImage: some View {
        let font: Font = .system(size: 80, weight: .black)
        
        return Image(systemName: "laurel.trailing")
            .font(font)
    }
    
    
    private var foreground: some ShapeStyle {
        let colors: [Color] = [.colorGreenLight, .colorGreenMedium, .colorGreenDark]
        
        return LinearGradient(
            colors: colors,
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

#Preview {
    SettingsView()
}
