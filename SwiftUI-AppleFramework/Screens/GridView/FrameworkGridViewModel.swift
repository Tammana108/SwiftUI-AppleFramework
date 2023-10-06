//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 05/10/23.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework : Framework? {
        didSet {
            isShowingDetailView = true
            
        }
    }
    @Published var isShowingDetailView = false
  
    
}
