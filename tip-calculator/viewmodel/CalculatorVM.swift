//
//  CalculatorVM.swift
//  tip-calculator
//
//  Created by Caleb Danielsen on 26.07.2023.
//

import Foundation
import Combine
import CombineCocoa

class CalculatorVM {
    // Input from View Controller
    struct Input {
        let billPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    // Update View Controller
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    private var cancellables = Set<AnyCancellable>()
    
    func transform(input: Input) -> Output {
        input.splitPublisher.sink { tip in
            print("The split \(tip)")
        }.store(in: &cancellables)
        
        let result = Result(
            amountPerPerson: 500,
            totalBill: 1000,
            totalTip: 50.0)
        
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
}
