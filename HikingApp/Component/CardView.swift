//
//  CardView.swift
//  HikingApp
//
//  Created by Nejat Boy on 22.06.2025.
//

import SwiftUI


struct CardView: View {
    var body: some View {
        ZStack {
            circle
            image
        }
    }
    
    
    private var circle:  some View {
        let colors: [Color] = [.colorIndigoMedium, .colorSalmonLight]
        let gradient = LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
        
        return Circle()
            .fill(gradient)
            .frame(width: 256, height: 256, alignment: .center)
    }
    
    
    private var image: some View {
        Image("image-1").resizable().scaledToFit()
    }
}

//#Preview {
//    CardView()
//}
