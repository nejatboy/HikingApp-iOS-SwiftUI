//
//  MotionAnimationView.swift
//  HikingApp
//
//  Created by Nejat Boy on 29.07.2025.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                circle()
            }

        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
    
    
    func circle() -> some View {
        let position: CGPoint = .init(x: randomCoordinate, y: randomCoordinate)
        
        let animation: Animation = .interpolatingSpring(stiffness: 0.25, damping: 0.25)
            .repeatForever()
            .speed(randomSpeed)
            .delay(randomDelay)
        
        return Circle()
            .foregroundStyle(.white)
            .opacity(0.25)
            .frame(width: randomSize)
            .position(position)
            .scaleEffect(isAnimating ? randomScale : 1)
            .onAppear {
                withAnimation(animation) {
                    isAnimating = true
                }
            }
    }
    
    
    var randomCoordinate: CGFloat {
        .random(in: 0...256)
    }
    
    
    var randomSize: CGFloat {
        .random(in: 4...80)
    }
    
    
    var randomScale: CGFloat {
        .random(in: 0.1...2.0)
    }
    
    
    var randomSpeed: Double {
        .random(in: 0.05...1.0)
    }
    
    
    var randomDelay: Double {
        .random(in: 0...2)
    }
}


#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
