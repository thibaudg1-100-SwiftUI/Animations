//
//  Repeat.swift
//  Animations
//
//  Created by RqwerKnot on 10/01/2022.
//

import SwiftUI

struct Repeat: View {
    
    @State private var animationAmount = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 1.0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Button("tap me"){
                animationAmount += 1
            }
            .padding(50)
            .foregroundColor(.white)
            .background(.red)
            .clipShape(Circle())
            // will scale up or down the view it applies to:
            .scaleEffect(animationAmount)
            // blur the view it applies to:
            .blur(radius: (animationAmount - 1) * 3 )
            
            // animate the view it applies to when 'value' changes:
            .animation(
                .easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true),
                value: animationAmount
            )
            
            Spacer()
            
            Button("tap me"){
                animationAmount2 += 1
            }
            .padding(50)
            .foregroundColor(.white)
            .background(.red)
            .clipShape(Circle())
            // will scale up or down the view it applies to:
            .scaleEffect(animationAmount2)
            // blur the view it applies to:
            .blur(radius: (animationAmount2 - 1) * 3 )
            
            // animate the view it applies to when 'value' changes:
            .animation(
                .easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                value: animationAmount2
            )
            
            
            Spacer()
            
            Button("tap me"){
            }
            .padding(50)
            .foregroundColor(.white)
            .background(.red)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount3)
                    .opacity(2 - animationAmount3)
                    .animation(.easeIn(duration: 1)
                                .repeatForever(autoreverses: false)
                               , value: animationAmount3)
            
            )
            .onAppear {
                animationAmount3 = 2
            }
        }
        
    }
}

struct Repeat_Previews: PreviewProvider {
    static var previews: some View {
        Repeat()
    }
}
