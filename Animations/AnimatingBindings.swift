//
//  AnimatingBindings.swift
//  Animations
//
//  Created by RqwerKnot on 10/01/2022.
//

import SwiftUI

struct AnimatingBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        // to check how the value of animationAmount changes from Swift's perspective:
        print(animationAmount)
        
        return VStack{
            Spacer()
            
            Button("Tap me"){
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            
            
            Spacer()
            
            // animation is directly attached to a Binding value:
            Stepper("Scale effect", value: $animationAmount.animation(), in: 1...5)
                .padding()
            
            Spacer()
            
            Stepper("Scale effect 2", value: $animationAmount.animation(.easeOut(duration: 2).delay(0.5).repeatCount(3, autoreverses: false)),
                    in: 1...5)
                .padding()
            
            Spacer()
        }
    }
}

struct AnimatingBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
