//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Frank Solleveld on 21/06/2021.
//

import SwiftUI

struct FrameworkGridView: View {

	@StateObject var viewModel = FrameworkGridViewModel()

	var body: some View {
		NavigationView {
			List {
				ForEach(MockData.frameworks) { framework in
                    FrameworkTitleView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
				}
			}
			.navigationTitle("🍏 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(
                    viewModel: FrameworkDetailViewModel(
                    framework: viewModel.selectedFramework!,
                    isShowingDetailView: $viewModel.isShowingDetailView)
                )
            }
		}
		.accentColor(Color(.label))
	}
}

struct FrameworkGridView_Previews: PreviewProvider {
	static var previews: some View {
		FrameworkGridView()
			.preferredColorScheme(.dark)
	}
}
