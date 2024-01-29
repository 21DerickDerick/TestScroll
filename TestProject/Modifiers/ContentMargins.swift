//
//  ContentMargins.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 27/1/24.
//

import SwiftUI

/*
 Introduced: iOS 17
 */

struct ContentMarginsView: View {
    
    var numbers = ["1", "2", "3", "4", "5"]
    
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
                //.padding([.leading, .trailing], 32)
            }
            .frame(height: 100)
            .border(.white)
            
            Spacer()
        }
//        .contentMargins(.horizontal, 32, for: .scrollContent)
//        .contentMargins(.vertical, 16, for: .scrollContent)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

struct ContentMarginsView2: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
//            HStack {
//                Text("Description")
//                    .padding(.leading, 16)
//                Spacer()
//            }
            
            TextEditor(text: $text)
                .frame(width: 300, height: 300)
                .border(.gray, width: 2)
                .cornerRadius(15)
                //.padding([.top, .leading], 100)
                .contentMargins(.all, 32, for: .scrollContent)
            
            Spacer()
        }
        //.contentMargins(.horizontal, 32, for: .scrollContent)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

#Preview {
    ContentMarginsView()
}

#Preview {
    ContentMarginsView2()
}
