//
//  lottieView.swift
//  swiftUILottieAnimation
//
//  Created by 宇宣 Chen on 2021/2/16.
//

import Foundation
import Lottie
import SwiftUI
import UIKit

//A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.
struct LottieView: UIViewRepresentable {
    
    var fileName:String
    
    typealias UIViewType = UIView
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        let view = UIView(frame: .zero)
        let animationView = AnimationView()
        animationView.animation = Animation.named(fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
            
        ])
        
        //add animation
        return view
    }
    
    func updateUIView(_ uiView: UIView, context:UIViewRepresentableContext<LottieView>) {
        //do nothing
    }
    
}
