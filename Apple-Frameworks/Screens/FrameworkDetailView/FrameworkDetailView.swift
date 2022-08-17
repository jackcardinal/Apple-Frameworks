//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Jack Cardinal on 1/17/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .lineLimit(50)
                .font(.body)
                .padding()
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string:"www.apple.com")!) {
                AFButton(name: "Learn More")
            }
            //            Button {
            //                //do something with framework.urlString
            //                viewModel.isShowingSafarView = true
            //            } label: {
            //                AFButton(name: "Learn More")
            //            }
            //        }
            //        .fullScreenCover(isPresented: $viewModel.isShowingSafarView, content: {
            //            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string:
            //                "www.apple.com")!)
            //        })
        }
    }
    
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
        //hardcoded isShowingDetailView value for preview only
    }
}
