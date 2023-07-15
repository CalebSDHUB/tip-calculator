//
//  SplitInputView.swift
//  tip-calculator
//
//  Created by Caleb Danielsen on 15.07.2023.
//

import UIKit

class SplitInputView: UIView {
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func layout() {
        backgroundColor = .systemBlue
    }
}
