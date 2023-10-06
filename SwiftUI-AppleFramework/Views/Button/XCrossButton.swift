//
//  XCrossButton.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 06/10/23.
//

import SwiftUI

struct XCrossButton: View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            }
            label: {
            Image(systemName: "xmark")
                .tint(Color(.label))
                .dynamicTypeSize(.large)
                .frame(width: 30, height: 30)
                .padding()
        }
        }
     
        
            
            
    }
}

struct XCrossButton_Previews: PreviewProvider {
    static var previews: some View {
        XCrossButton(isShowingDetailView: .constant(true))
    }
}
