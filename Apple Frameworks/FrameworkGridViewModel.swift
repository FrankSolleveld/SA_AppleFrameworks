//
//  FrameworkGridViewModel.swift
//  FrameworkGridViewModel
//
//  Created by Frank Solleveld on 16/07/2021.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
	var selectedFramework: Framework? {
		didSet {
			isShowingDetailView = true
		}
	}
	@Published var isShowingDetailView = false
}
