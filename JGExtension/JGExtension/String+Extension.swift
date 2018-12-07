//
//  String+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 31/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

extension String {
    /// Bool 변환
    ///
    /// - Returns: Bool?
    func boolValue() -> Bool? {
        if let `self` = self as NSString? {
            return self.boolValue
        }
        return nil
    }
    
    /// Int로 변환
    ///
    /// - Returns: Int?
    func intValue() -> Int? {
        if let `self` = self as NSString? {
            return self.integerValue
        }
        return nil
    }
    
    /// 천단위 컴마(,) 추가
    ///
    /// - Returns: 컴마가 추가된 숫자
    func numberFormat() -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        let formattedNumber = numberFormatter.string(from: NSNumber(value: self.intValue() ?? 0))
        return formattedNumber
    }
}
