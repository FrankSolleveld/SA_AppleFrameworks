//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Frank Solleveld on 21/06/2021.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns, content: {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        })
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
