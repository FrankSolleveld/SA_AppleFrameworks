//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Frank Solleveld on 21/06/2021.
//

import SwiftUI

struct FrameworkDetailView: View {

    @ObservedObject var viewModel: FrameworkDetailViewModel

    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                viewModel.isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
			.padding(.bottom, 10)
        }
        .sheet(isPresented: $viewModel.isShowingSafariView) {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "https://devfrank.org")!)
		}
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
    }
}
