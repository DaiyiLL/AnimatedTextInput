//
//  TestViewController.swift
//  AnimatedTextInput_Example
//
//  Created by Daiyi on 2023/12/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import AnimatedTextInput

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // 使用链式函数
        let style  = AnimatedTextInput.DefaultStyle()
        let fontHeight = style.textInputFont.lineHeight
        let disH = floor((58 - 10 - fontHeight) * 0.5)
        style.setV(corner: [.topLeft, .topRight])
             .setV(cornerRadius: 10)
             .setV(borderWidth: 2)
             .setV(activeColor: UIColor.blue)
             .setV(topMargin: disH + 10)
             .setV(bottomMargin: disH)
             .setV(placeholderMinFontSize: 10)
            
            
        let input = AnimatedTextInput(frame: CGRect(x: 10, y: 100, width: self.view.bounds.width - 20, height: 58), style: style)
        input.placeHolderText = "daishuyi"
        self.view.addSubview(input)
    }
}

 

