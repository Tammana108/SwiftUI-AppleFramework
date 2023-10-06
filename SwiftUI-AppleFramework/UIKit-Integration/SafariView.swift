//
//  SafariView.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 06/10/23.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable{
    let url : URL
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url:url)
    }
    
    
    
}
