//
//  FrameworkListView.swift
//  SwiftUI-AppleFramework
//
//  Created by Tammana on 05/10/23.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    var body: some View {
        NavigationView{
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination:
                                    FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)
                    ){
                        FrameworkListTitleView(framework: framework)
                    }
                        }
                }
            .navigationTitle("🍎 Frameworks")
            }
        .accentColor(Color(.label))
//            ScrollView{
//                LazyVGrid(columns: columns, content: {
//                    ForEach(MockData.frameworks){ framework in
//                        FrameworkGridTitleView(framework: framework)
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
//                    }
//                })
//            }
           
//            .sheet(isPresented: $viewModel.isShowingDetailView){ FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailView: $viewModel.isShowingDetailView)
//            }
        }
        
    }


struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
            .preferredColorScheme(.dark)
    }
        
}

