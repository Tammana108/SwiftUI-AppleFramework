//
//  FrameworkListTitleView.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 06/10/23.
//

import SwiftUI

struct FrameworkListTitleView: View {
    var framework : Framework
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListTitleView(framework: MockData.sampleFramework)
    }
}
