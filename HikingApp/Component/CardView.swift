//
//  CardView.swift
//  HikingApp
//
//  Created by Nejat Boy on 22.06.2025.
//

import SwiftUI


//MARK: CardView
struct CardView: View {
    
    
    var body: some View {
        ZStack {
            CircleView()
            MotionAnimationView()
            ImageView()
        }
    }
}


//MARK: CustomCircleView
private struct CircleView: View {
    
    @State private var isAnimateGradient = false
    
    
    var body: some View {
        let colors: [Color] = [.colorIndigoMedium, .colorSalmonLight]
        
        let gradient = LinearGradient(
            colors: colors,
            startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
            endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
        )
        
        let animation: Animation = .linear(duration: 3)
            .repeatForever(autoreverses: true)
        
        return Circle()
            .fill(gradient)
            .onAppear {
                withAnimation(animation) {
                    isAnimateGradient.toggle()
                }
            }
            .frame(width: 256, height: 256, alignment: .center)
    }
}



//MARK: ImageView
private struct ImageView: View {
    
    var body: some View {
        Image("image-1").resizable().scaledToFit()
    }
}

//#Preview {
//    CardView()
//}
