//
//  DefaultScrollPosition.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct DefaultScrollPositionView: View {
    @State var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var body: some View {
        VStack {
            Spacer()
            
            // Scroll View
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(numbers, id: \.self) { number in
                        Text(number)
                            .frame(width: 80, height: 40)
                            .foregroundColor(.blue)
                            .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                }
            }
            .scrollTargetLayout()
            .defaultScrollAnchor(.leading)
            .frame(height: 100)
            .border(.white)
            
            Spacer()
        }
        .contentMargins(.horizontal, 16, for: .scrollContent)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        
    }
}

#Preview {
    DefaultScrollPositionView()
}
