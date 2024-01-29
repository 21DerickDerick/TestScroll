//
//  ScrollBounceBehavior.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 16
 */

struct ScrollBounceBehaviorView: View {
    
    var numbers1 = ["1", "2", "3", "4", "5"]
    var numbers2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var body: some View {
        ScrollView {
            ForEach(numbers1, id: \.self) { number in
                Text(number)
                    .frame(width: 80, height: 40)
                    .foregroundColor(.blue)
                    .padding()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        }
        .scrollBounceBehavior(.always, axes: .vertical)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    ScrollBounceBehaviorView()
}
