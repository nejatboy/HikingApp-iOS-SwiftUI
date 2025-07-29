//
//  MotionAnimationView.swift
//  HikingApp
//
//  Created by Nejat Boy on 29.07.2025.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    
    var body: some View {
        ZStack {
            Circle().foregroundColor(.white)
        }.frame(width: 256, height: 256)
    }
}


#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
