//
//  ThemeFont.swift
//  tip-calculator
//
//  Created by Caleb Danielsen on 15.07.2023.
//
// Resource link=: https://developer.apple.com/fonts/system-fonts/

import UIKit

struct ThemeFont {
    // AvenirNext
    static func regular(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir Next Regular", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func bold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir Next Bold", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func demiBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir Next Demi Bold", size: size) ?? .systemFont(ofSize: size)
    }
}
