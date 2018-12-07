//
//  Date+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 24/10/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

extension Date {
    /// 현재로 부터 얼마 전인지 구함
    ///
    /// - Returns: 텍스트
    func offsetString() -> String {
        if years() > 0 { return "\(years())년 전" }
        if months() > 0 { return "\(months())개월 전" }
        if weeks() > 0 { return "\(weeks())주일 전" }
        if days() > 0 { return "\(days())일 전" }
        if hours() > 0 { return "\(hours())시간 전" }
        if minutes() > 0 { return "\(minutes())분 전" }
        if seconds() > 0 { return "\(seconds())초 전" }
        return ""
    }
    
    /// 년
    ///
    /// - Returns: 년
    func years() -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year ?? 0
    }
    
    /// 월
    ///
    /// - Returns: 월
    func months() -> Int {
        return Calendar.current.dateComponents([.month], from: self, to: Date()).month ?? 0
    }
    
    /// 주
    ///
    /// - Returns: 주
    func weeks() -> Int {
        return Calendar.current.dateComponents([.weekOfYear], from: self, to: Date()).weekOfYear ?? 0
    }
    
    /// 일
    ///
    /// - Returns: 일
    func days() -> Int {
        return Calendar.current.dateComponents([.day], from: self, to: Date()).day ?? 0
    }
    
    /// 시간
    ///
    /// - Returns: 시간
    func hours() -> Int {
        return Calendar.current.dateComponents([.hour], from: self, to: Date()).hour ?? 0
    }
    
    /// 분
    ///
    /// - Returns: 분
    func minutes() -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: Date()).minute ?? 0
    }
    
    /// 초
    ///
    /// - Returns: 초
    func seconds() -> Int {
        return Calendar.current.dateComponents([.second], from: self, to: Date()).second ?? 0
    }
}
