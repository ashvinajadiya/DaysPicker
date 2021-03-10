//
//  PickerModel.swift
//  DaysPicker
//
//  Created by Ashvin Ajadiya on 10/03/21.
//

import Foundation

struct PickerModel {
    
    // Animation duration for picker show and hide
    let animationDuration: TimeInterval
    
    
    let numberOfComponent = 1
    
    // Set range for picker view list/elements
    var range: Int
    
    lazy var elements: [Int] = {
        return [Int](1...range)
    }()
    
    mutating func numbersOfDays() -> Int {
        return elements.count
    }
    
    // Selected day from picker
    var selectedDays: Int
}
