//
//  ViewController.swift
//  swiftUIInUIKit
//
//  Created by 宇宣 Chen on 2021/2/19.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Show SwiftUI", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc func didTapButton() {
        //SwiftUI intereop
        let vc = UIHostingController(rootView: SwiftUIView())
        present(vc, animated: true)
    }


}

