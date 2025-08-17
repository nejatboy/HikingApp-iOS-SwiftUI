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
            firstImage
            title
            secondImage
        }
    }
    
    
    private var firstImage: some View {
        let font: Font = .system(size: 80, weight: .black)
        
        return Image(systemName: "latural.trailing")
            .font(font)
    }
    
    
    private var title: some View {
        let font: Font = .system(size: 64, weight: .black)
        
        return Text("Hike")
            .font(font)
    }
    
    
    private var secondImage: some View {
        let font: Font = .system(size: 80, weight: .black)
        
        return Image(systemName: "latural.leading")
            .font(font)
    }
}

#Preview {
    SettingsView()
}
