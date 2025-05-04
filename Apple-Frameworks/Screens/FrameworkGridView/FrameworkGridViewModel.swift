//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by udara on 2025-05-04.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework : Framework? {
        
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView : Bool = false
     
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
}
