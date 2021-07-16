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
					NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
						FrameworkTitleView(framework: framework)
					}
				}
			}

			.navigationTitle("🍏 Frameworks")
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
