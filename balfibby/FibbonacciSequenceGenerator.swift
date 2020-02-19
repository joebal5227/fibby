//
//  FibbonacciSequenceGenerator.swift
//  balfibby
//
//  Created by Joe Balistrieri on 2/19/20.
//  Copyright © 2020 Joe Balistrieri. All rights reserved.
//

import Foundation

public class FibbonacciSequenceGenerator
{
    private init () {}
    
    // generates a fibbonacci sequence with a maximum end value
    public static func fibonacciSequenceMaker(maxEndValue maxEnd : Int) -> [Int]
    {
        var sequence = [0,1]
        
        while sequence[sequence.count - 1] < maxEnd
        {
            sequence.append(sequence[sequence.count - 2] + sequence[sequence.count - 1])
        }
        
        return sequence
    }
    
    // sums up the even numbers in an integer array
    public static func addUpEvenNumbers(numbers nums: [Int]) -> Int
    {
        var sumTotal = 0
        
        for eachNumber in nums
        {
            if eachNumber.isMultiple(of: 2)
            {
                sumTotal = sumTotal + eachNumber
            }
        }
        
        return sumTotal
    }

}

