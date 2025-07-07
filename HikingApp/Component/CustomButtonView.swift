//
//  CustomButton.swift
//  HikingApp
//
//  Created by Nejat Boy on 5.07.2025.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            circle
            ring
            image
        }
        .frame(width: 58, height: 58)
    }
    
    
    private var circle: some View {
        let gradient = LinearGradient(
            colors: [.white, .colorGreenLight, .colorGreenMedium],
            startPoint: .top,
            endPoint: .bottom
        )
        
        return Circle()
            .fill(gradient)
    }
    
    
    private var ring: some View {
        let gradient = LinearGradient(
            colors: [.colorGrayLight, .colorGrayMedium],
            startPoint: .top,
            endPoint: .bottom
        )
        
        return Circle()
            .stroke(gradient, lineWidth: 4)
    }
    
    
    private var image: some View {
        let gradient = LinearGradient(
            colors: [.colorGrayLight, .colorGrayMedium],
            startPoint: .top,
            endPoint: .bottom
        )
        
        return Image(systemName: "figure.hiking")
            .font(.system(size: 30))
            .foregroundStyle(gradient)
    }
}

#Preview {
    CustomButtonView()
}
