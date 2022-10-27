//
//  DefaultAnimation.swift
//  Animations
//
//  Created by Apprenant 86 on 30/11/2021.
//

import SwiftUI

struct DefaultAnimation: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        Button("tap me"){
            animationAmount += 1
        }
        .padding(20)
        .foregroundColor(.white)
        .background(.red)
        .clipShape(Circle())
        // will scale up or down the view it applies to:
        .scaleEffect(animationAmount)
        // blur the view it applies to:
        .blur(radius: (animationAmount - 1) * 3 )
        // animate the view it applies to when 'value' changes:
        .animation(.default, value: animationAmount)
        // modifiers written below this line won't be animated:
        
    }
}

struct DefaultAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAnimation()
    }
}
