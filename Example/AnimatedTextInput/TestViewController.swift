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
        input.placeHolderText = "Please Enter your phone"
        input.isHiddenLine = true
        self.view.addSubview(input)
        
        let filed = UITextField(frame: CGRect(x: 10, y: 178, width: self.view.bounds.width - 20, height: 58))
        filed.borderStyle = UITextField.BorderStyle.roundedRect
        self.view.addSubview(filed)
        DispatchQueue.main.async {
            input.text = "123456788"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

 

