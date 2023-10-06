//
//  FrameworkDetailView.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 05/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State var isShowingSafariView = false
    var body: some View {
        ScrollView{
            VStack{
                // Show in case of Grid View only
                // XCrossButton(isShowingDetailView: $isShowingDetailView)
                
                Spacer()
                FrameworkGridTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                Spacer()
                Button{
                    isShowingSafariView = true
                }
                label : {
                    AFButton(title: "Learn More")
                    // Label("Learn More", image: "book.fill")
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                }
            }
            .fullScreenCover(isPresented: $isShowingSafariView){
                SafariView(url: URL(string: framework.urlString)!)
            }
            
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
