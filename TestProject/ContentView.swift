//
//  ContentView.swift
//  TestProject
//
//  Created by Derick, Derick | RASIA on 22/1/24.
//

import SwiftUI

struct ContentView: View {
    
    var images = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 8) {
                    ForEach(images, id: \.self) { image in
                        
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        //.padding(.horizontal, 8)
                        
                    }
                }
                .frame(height: 320)
            }
            Spacer()
        }
        .contentMargins(.horizontal, 32, for: .scrollContent)
    }
}

#Preview {
    ContentView()
}
