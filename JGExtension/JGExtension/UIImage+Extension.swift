//
//  UIImage+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 18/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

extension UIImage {
    /// Color로 이미지 초기화
    ///
    /// - Parameters:
    ///   - color: Color
    ///   - size: 사이즈
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    /// 이미지에 알파를 넣음
    ///
    /// - Parameter value: 알파값
    /// - Returns: 새로운 이미지
    func alpha(_ value: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
