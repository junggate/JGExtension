//
//  UIAlertController+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 29/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

extension UIAlertController {
    /// 기본 알림화면을 표시한다
    ///
    /// - Parameters:
    ///   - title: 제목
    ///   - message: 메시지
    ///   - dismiss: 알림창 닫기 Closure
    static func defaultAlert(title: String?, message: String?, dismiss: (() -> Void)?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: { (action) in
            dismiss?()
        }))
        if let rootViewController = UIApplication.shared.windows.first?.rootViewController {
            rootViewController.present(alertController, animated: true, completion: nil)
        }
    }
}
