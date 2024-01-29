//
//  NamedCoordinatedSpace.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 28/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct NamedCoordinatedSpaceView: View {
    var body: some View {
        ScrollView {
            ForEach(0 ..< 30) { _ in
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .overlay(
                        GeometryReader { proxy in
                            if let distanceFromTop = proxy.bounds(of: .named("MyScrollView"))?.minY {
                            //if let distanceFromTop = proxy.bounds(of: .scrollView)?.minY {
                                Text(distanceFromTop * -1, format: .number)
                                    .foregroundStyle(.blue)
                            }
                        }
                    )
            }
        }
        .border(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        .contentMargins(30, for: .scrollContent)
        .coordinateSpace(.named("MyScrollView"))
    }
}

#Preview {
    NamedCoordinatedSpaceView()
}
