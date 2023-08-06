//
//  tip_CalculatorSnapShotTests.swift
//  tip-calculatorTests
//
//  Created by Caleb Danielsen on 06.08.2023.
//

import XCTest
import SnapshotTesting
@testable import tip_calculator

final class tip_CalculatorSnapShotTests: XCTestCase {
    private var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }

    func testLogoView() {
        // Given
        let size = CGSize(width: screenWidth, height: 48)
        // When
        let view = LogoView()
        // Then
        assertSnapshot(matching: view, as: .image(size: size))
    }
    
    func testInitialResultView() {
        // Given
        let size = CGSize(width: screenWidth, height: 224)
        // When
        let view = ResultView()
        // Then
        assertSnapshot(matching: view, as: .image(size: size))
    }
    
    func testInitialBillInputView() {
        // Given
        let size = CGSize(width: screenWidth, height: 56)
        // When
        let view = BillInputView()
        // Then
        assertSnapshot(matching: view, as: .image(size: size))
    }
    
    func testInitialTipInputView() {
        // Given
        let size = CGSize(width: screenWidth, height: 56+56+16)
        // When
        let view = TipInputView()
        // Then
        assertSnapshot(matching: view, as: .image(size: size))
    }
    
    func testInitialSplitInputView() {
        // Given
        let size = CGSize(width: screenWidth, height: 56)
        // When
        let view = SplitInputView()
        // Then
        assertSnapshot(matching: view, as: .image(size: size))
    }
}
