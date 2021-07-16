//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Frank Solleveld on 21/06/2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
	@Binding var isShowingDetailView: Bool
	@State private var isShowingSafariView = false
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
			.padding(.bottom, 10)
        }
		.sheet(isPresented: $isShowingSafariView) {
			SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://devfrank.org")!)
		}
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
		FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
