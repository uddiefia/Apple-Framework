//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by udara on 2025-05-04.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework).onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                    }
                }
            }
            
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}

