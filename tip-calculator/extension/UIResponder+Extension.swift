//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by Caleb Danielsen on 05.08.2023.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
