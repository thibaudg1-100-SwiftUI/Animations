//
//  AnimatingGestures-1.swift
//  Animations
//
//  Created by RqwerKnot on 10/01/2022.
//

import SwiftUI

struct AnimatingGestures_1: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
            LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .offset(dragAmount)
                .gesture(
                    DragGesture()
                        .onChanged { dragAmount = $0.translation }
                        .onEnded { _ in
                            withAnimation(.spring()){
                                dragAmount = .zero
                            }
                        }
                )
        // to animate both during gesture and when gesture ends, use implicit animation:
//                .animation(.spring(), value: dragAmount)
        }
}

struct AnimatingGestures_1_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures_1()
    }
}
