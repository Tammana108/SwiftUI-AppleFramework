//
//  AFButton.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 06/10/23.
//

import SwiftUI

struct AFButton: View {
    var title : String
    var body: some View {
        Text(title)
            .font(.title2)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width : 280, height : 50)
            .background(Color.red)
            .cornerRadius(10)
            .padding()
            
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title : "")
    }
}
