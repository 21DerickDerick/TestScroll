//
//  ScrollTransition.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 28/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct ScrollTransitionView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0 ..< 30) { i in
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .scrollTransition(.animated) { content, phase in
                            content
                                //.scaleEffect(phase == .identity ? 1 : 0.6)
//                                .opacity(phase == .identity ? 1 : 0.3)
//                                .rotationEffect(Angle(degrees: phase != .identity ? 180 : 0))
                        }
                }
            }
            .frame(height: 416)
            //.scrollClipDisabled(true)
        }
        .border(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        .contentMargins(30, for: .scrollContent)
    }
}

#Preview {
    ScrollTransitionView()
}
