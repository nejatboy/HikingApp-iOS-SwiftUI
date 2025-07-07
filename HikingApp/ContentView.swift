//
//  ContentView.swift
//  HikingApp
//
//  Created by Nejat Boy on 22.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack(alignment: .leading) {
                header
                description
                CardView()
            }
            .padding(.horizontal, 30)
            
        }
        .frame(width: 320, height: 570, alignment: .center)
    }
    
    
    private var header:  some View {
        return HStack {
            headerText
            Spacer()
            headerButton
        }
    }
    
    
    private var headerText: some View {
        let gradient = LinearGradient(
            colors: [.colorGrayLight, .colorGrayMedium],
            startPoint: .top,
            endPoint: .bottom
        )
        
        return Text("Hiking")
            .fontWeight(.black)
            .font(.system(size: 52))
            .foregroundStyle(gradient)
    }
    
    
    private var headerButton: some View {
        return Button {
            
        } label: {
            CustomButtonView()
        }
    }
    
    
    private var description: some View {
        return Text("Fun and enjoyable outdoor activity for friends and families")
            .multilineTextAlignment(.center)
            .foregroundColor(.colorGrayMedium)
    }
}

//#Preview {
//    ContentView()
//}
