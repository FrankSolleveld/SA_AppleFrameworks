//
//  SafariView.swift
//  SafariView
//
//  Created by Frank Solleveld on 16/07/2021.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

	let url: URL

	func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
		SFSafariViewController(url: url)
	}

	func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) { }
}
