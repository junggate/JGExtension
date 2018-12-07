//
//  URL+Extension.swift
//  caramel
//
//  Created by JungMoon-Mac on 27/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

extension URL {
    /// Quary String을 Dictionary로 변경
    var queryItems: [String: String] {
        var queryItemsDictionary = [String: String]()
        guard let components = NSURLComponents(url: self, resolvingAgainstBaseURL: false), let queryItems = components.queryItems else { return queryItemsDictionary }
        queryItems.forEach { queryItemsDictionary[$0.name] = $0.value }
        return queryItemsDictionary
    }
}
