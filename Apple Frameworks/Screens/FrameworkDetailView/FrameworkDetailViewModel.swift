//
//  FrameworkDetailViewModel.swift
//  FrameworkDetailViewModel
//
//  Created by Frank Solleveld on 31/08/2021.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {

    let framework: Framework
    var isShowingDetailView: Binding<Bool>

    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }

}
