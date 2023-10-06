//
//  FrameworkGridTitleView.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 05/10/23.
//

import SwiftUI

struct FrameworkGridTitleView: View {
    var framework : Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}

struct FrameworkGridTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridTitleView(framework: MockData.sampleFramework)
    }
}
