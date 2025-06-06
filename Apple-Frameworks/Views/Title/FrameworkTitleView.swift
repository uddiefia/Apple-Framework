//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by udara on 2025-05-04.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework :Framework
    var body: some View {
        VStack{
            Image(framework.imageName).resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name).font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
