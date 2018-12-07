//
//  UIView+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 18/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

@IBDesignable
extension UIView {
    /// 모서리를 둥글게
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.clipsToBounds = true
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
    /// Border 너비
    @IBInspectable
    var borderWidth: CGFloat {
        set {
            self.clipsToBounds = true
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    /// Border 컬러
    @IBInspectable
    var borderColor: UIColor? {
        set {
            self.clipsToBounds = true
            layer.borderColor = newValue?.cgColor
        }
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
    }
    
    
    /// 모서리를 둥글게 한다.
    @IBInspectable var halfCornerRadius: Bool {
        set {
            if newValue {
                self.clipsToBounds = true
                self.layer.cornerRadius = self.frame.size.height / 2.0
            } else {
                self.layer.cornerRadius = 0.0
            }
        }
        get {
            return false
        }
    }
}
