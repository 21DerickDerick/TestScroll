//
//  ScrollIndicatorFlash.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct ScrollIndicatorFlashView: View {
    
    @State var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(numbers, id: \.self) { number in
                    Text(number)
                        .frame(width: 80, height: 40)
                        .foregroundColor(.blue)
                        .padding()
                }
                .background(Color.white)
                .cornerRadius(16)
            }
            .padding()
            .scrollBounceBehavior(.basedOnSize, axes: .vertical)
            .scrollIndicatorsFlash(onAppear: true)
            .scrollIndicatorsFlash(trigger: numbers.count)
            
            Button("Delete first number", role: .destructive) {
                numbers.removeFirst()
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    ScrollIndicatorFlashView()
}
