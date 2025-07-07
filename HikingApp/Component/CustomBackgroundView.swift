//
//  CustomBackgroundView.swift
//  HikingApp
//
//  Created by Nejat Boy on 22.06.2025.
//

import SwiftUI

struct CustomBackgroundView: View {
    
    var body: some View {
        ZStack {
            depth
            light
            gradient
        }
    }
    
    
    private var depth: some View {
        Color.colorGreenDark.cornerRadius(40).offset(y: 12)
    }
    
    
    private var light: some View {
        Color.colorGreenLight.cornerRadius(40).offset(y: 3).opacity(0.85)
    }
    
    
    private var gradient: some View {
        let colors: [Color] = [.colorGreenLight, .colorGreenMedium]
        
        return LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
    }
}

#Preview {
    CustomBackgroundView().padding()
}
