//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by udara on 2025-05-04.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            
            .navigationTitle("Frameworks")
        }
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}

struct FrameworkTitleView: View {
    let framework :Framework
    var body: some View {
        VStack{
            Image(framework.imageName).resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name).font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
