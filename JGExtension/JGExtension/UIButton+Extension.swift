//
//  Button+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 18/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

@IBDesignable
extension UIButton {
    /// highlight 효과를 준다
    @IBInspectable var highlight: Bool {
         set {
            if newValue {
                let image = UIImage(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3))
                self.setBackgroundImage(image, for: UIControl.State.highlighted)
            }
        }
        get {
            return false
        }
    }
    
    /// 버튼 선택 시 컬러
    @IBInspectable var selectedColor: UIColor? {
        set {
            if let selectedColor = newValue {
//                print("selectedColor \(selectedColor)")
                let image = UIImage(color: selectedColor)
                self.setBackgroundImage(image, for: UIControl.State.selected)
                self.setBackgroundImage(image, for: UIControl.State.highlighted)
            }
        }
        get {
            return UIColor.clear
        }
    }
}
