//
//  balfibbyTests.swift
//  balfibbyTests
//
//  Created by Joe Balistrieri on 2/19/20.
//  Copyright © 2020 Joe Balistrieri. All rights reserved.
//

import XCTest
@testable import balfibby

class balfibbyTests: XCTestCase
{
    
    func testFibGenerator()
    {
        // first test with simple sequence
        var sequence = FibbonacciSequenceGenerator.fibonacciSequenceMaker(maxEndValue: 21)
        
        assert(!sequence.isEmpty)
        assert(sequence.count == 9)
        
        // test with larger sequence where the end value doesn't exceed 4 million
        sequence = FibbonacciSequenceGenerator.fibonacciSequenceMaker(maxEndValue: 4000000)
        
        assert(!sequence.isEmpty)
        assert(sequence.count == 35)
        
    }
    
    func testSumUpOfEvenNumbers()
    {
        // test with random integer array
        var sumTotal = FibbonacciSequenceGenerator.addUpEvenNumbers(numbers: [2,2,7,9,113,1,0,48,111111,66])
        
        assert(sumTotal == 118)
        
        // test with simple fibbonacci sequence data
        sumTotal = FibbonacciSequenceGenerator.addUpEvenNumbers(numbers: [0,1,2,3,5,8])
        
        assert(sumTotal == 10)
    
        // test with larger fibbonacci sequence
        sumTotal = FibbonacciSequenceGenerator.addUpEvenNumbers(numbers: FibbonacciSequenceGenerator.fibonacciSequenceMaker(maxEndValue: 4000000))
       
        assert(sumTotal == 4613732)

    }


}
