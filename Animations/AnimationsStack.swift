//
//  AnimationsStack.swift
//  Animations
//
//  Created by RqwerKnot on 10/01/2022.
//

import SwiftUI

struct AnimationsStack: View {
    
    @State private var enabled = true
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .foregroundColor(.white)
        .background(enabled ? .red : .blue)
        .animation(.easeInOut(duration: 1.5), value: enabled)
        // could use nil fo no animation AND to prevent any further animation to happen on background color:
        //.animation(nil, value: enabled)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 100 : 30) )
        .animation(.interpolatingSpring(stiffness: 50, damping: 5), value: enabled)
    }
}

struct AnimationsStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsStack()
    }
}
