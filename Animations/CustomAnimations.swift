//
//  CustomAnimations.swift
//  Animations
//
//  Created by Apprenant 86 on 30/11/2021.
//

import SwiftUI

struct CustomAnimations: View {
    
    @State private var animationAmount = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 1.0
    @State private var animationAmount4 = 1.0
    
    var body: some View {
        NavigationView {
            VStack{
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
                .animation(.default, value: animationAmount)
                // .default currently uses .easeInOut
                
                Spacer()
                
                Button("tap me"){
                    animationAmount2 += 1
                }
                .padding(50)
                .foregroundColor(.white)
                .background(.red)
                .clipShape(Circle())
                .scaleEffect(animationAmount2)
                .blur(radius: (animationAmount2 - 1) * 3 )
                
                // Duration of the animation can be set up
                .animation(.easeOut(duration: 5), value: animationAmount2)

                
                Spacer()
                
                Button("tap me"){
                    animationAmount3 += 1
                }
                .padding(50)
                .foregroundColor(.white)
                .background(.red)
                .clipShape(Circle())
                // will scale up or down the view it applies to:
                .scaleEffect(animationAmount3)
                // blur the view it applies to:
                .blur(radius: (animationAmount3 - 1) * 3 )
                
                // animate the view it applies to when 'value' changes:
                .animation(.interpolatingSpring(stiffness: 50, damping: 3), value: animationAmount3)
                
                Spacer()
                
                Button("tap me"){
                    animationAmount4 += 1
                }
                .padding(50)
                .foregroundColor(.white)
                .background(.red)
                .clipShape(Circle())
                .scaleEffect(animationAmount4)
                .blur(radius: (animationAmount4 - 1) * 3 )
                
                // a delay can be set up as a modifier of an Animation:
                .animation(.interpolatingSpring(stiffness: 50, damping: 3)
                            .delay(1),
                           value: animationAmount4)
                
                
                Spacer()
            }
            .navigationTitle("Custom Animations")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                Button("Reset"){
                    animationAmount = 1
                    animationAmount2 = 1
                    animationAmount3 = 1
                    animationAmount4 = 1
                }
            }
        }
    }
}

struct CustomAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimations()
    }
}
