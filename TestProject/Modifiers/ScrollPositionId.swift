//
//  ScrollPositionId.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct ScrollPositionIDView: View {
    @State private var position: Int?
    @State var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var body: some View {
        VStack {
            Spacer()
            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(numbers, id: \.self) { number in
                        Text(number)
                            .id(Int(number))
                            .frame(width: 80, height: 40)
                            .foregroundColor(.blue)
                            .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                }
            }
            .scrollTargetLayout()
            .scrollPosition(id: $position)
            .frame(height: 100)
            .border(.white)
            
            Spacer()
        }
        .contentMargins(.horizontal, 16, for: .scrollContent)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
        .onAppear(perform: {
            position = 1
        })
    }
}

#Preview {
    ScrollPositionIDView()
}
