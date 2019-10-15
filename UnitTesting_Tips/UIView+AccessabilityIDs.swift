//
//  UIView+AccessabilityIDs.swift
//  UnitTesting_Tips
//
//  Created by abuzeid on 12/27/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit
extension UIView{
    @IBInspectable
    public var accessibilityId: String {
        set (accessibilityId) {
            self.accessibilityIdentifier = accessibilityId
        }
        get {
            return self.accessibilityIdentifier ?? ""
        }
    }
}
