//
//  CalculationTests.swift
//  TipCalculatorTests
//
//  Created by Net Solution on 29. 11. 2023..
//

import XCTest
@testable import TipCalculator

final class CalculationTests: XCTestCase {

    func testSuccessfulTipCalculation() {
        // Given (Arrange)
        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculationTip(of: enteredAmount, with: tipSlider)
        
        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeEnteredAmountTipCalculation() {
        // Given (Arrange)
        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculationTip(of: enteredAmount, with: tipSlider)
        
        // Then (Assert)
        XCTAssertNil(tip)
    }

}
