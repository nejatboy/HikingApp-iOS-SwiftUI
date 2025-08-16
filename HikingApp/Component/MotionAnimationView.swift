//
//  MotionAnimationView.swift
//  HikingApp
//
//  Created by Nejat Boy on 29.07.2025.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                circle
            }

        }.frame(width: 256, height: 256)
    }
    
    
    var circle: some View {
        let position: CGPoint = .init(x: randomCoordinate, y: randomCoordinate)
        
        return Circle()
            .foregroundStyle(.white)
            .opacity(0.25)
            .position(position)
    }
    
    var randomCoordinate: CGFloat {
        .random(in: 0...256)
    }
}


#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
