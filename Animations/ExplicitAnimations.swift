//
//  ExplicitAnimations.swift
//  Animations
//
//  Created by RqwerKnot on 10/01/2022.
//

import SwiftUI

struct ExplicitAnimations: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        
            Button("Tap Me") {
                // use 'withAnimation' for explicitly animate what's inside {}
                withAnimation(.interpolatingSpring(stiffness: 50, damping: 5).delay(0.5)) {
                    animationAmount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 0))
        
        }
}

struct ExplicitAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimations()
    }
}
