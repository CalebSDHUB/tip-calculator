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
        let buildPublisher: AnyPublisher<Double, Never>
        let tipPublisher: AnyPublisher<Tip, Never>
        let splitPublisher: AnyPublisher<Int, Never>
    }
    
    // Update View Controller
    struct Output {
        let updateViewPublisher: AnyPublisher<Result, Never>
    }
    
    private var cancellables = Set<AnyCancellable>()
    
    func transform(input: Input) -> Output {
        input.buildPublisher.sink { bill in
            print("The Bill \(bill)")
        }.store(in: &cancellables)
        
        let result = Result(
            amountPerPerson: 500,
            totalBill: 1000,
            totalTip: 50.0)
        
        return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    }
}
