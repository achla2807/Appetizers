//
//  LoadingView.swift
//  Appetizers
//
//  Created by Achla Ajay on 08/02/25.
//

import SwiftUI

struct activityIndicator: UIViewRepresentable{
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
    
}

struct LoadingView: View{
    var body : some View{
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            activityIndicator()
        }
    }
}
