//
//  SafeAreaPadding.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 15
 */
struct SafeAreaInsetView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ForEach(0 ..< 20) { i in
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .safeAreaInset(edge: .bottom) {
                Text("")
                    .font(.title3)
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(.yellow.opacity(0.6))
            }
        }
    }
}

/*
 Introduced: iOS 17
 */
struct SafeAreaPaddingView2: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ForEach(0 ..< 20) { i in
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .safeAreaPadding(.bottom, 40)

            Text("")
                .font(.title3)
                .bold()
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(.yellow.opacity(0.6))
        }
    }
}




struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        SafeAreaInsetView()
            .previewInterfaceOrientation(.portrait)
        
        SafeAreaPaddingView2()
            .previewInterfaceOrientation(.portrait)
    }
}
