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
            
            Section {
                Header()
                
                VStack(spacing: 8) {
                    Text("Where can you find perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are accually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boosts! It's rtime for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            
        }
    }
}



private struct Header: View {
    
    var body: some View {
        HStack {
            Spacer()
            firstImage
            
            VStack(spacing: -10) {
                title
                subtitle
            }
            
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
    
    
    private var subtitle: some View {
        let font: Font = .system(size: 18, weight: .medium)
        
        return Text("Editors' Choice")
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
