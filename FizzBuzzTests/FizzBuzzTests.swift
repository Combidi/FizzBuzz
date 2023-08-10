//
//  Created by Peter Combee on 10/08/2023.
//

import XCTest

// Fizz buzz
// Delivers fizz on any number divisible by 3
// Delivers buzz on any number divisible by 5
// Delivers fissbuzz on any number that is divisible by both 3 and 5

enum FizzBuzz {
    static func evaluate(number: Int) -> String {
        return number.isMultiple(of: 5) ? "Buzz" : "Fizz"
    }
}

final class FizzBuzzTests: XCTestCase {

    func test_evaluate_deliversFizzOnNumbersDivisibleByThree() {

        let samples = [3, 6, 9, 12, 18]
        
        for sample in samples {
            
            let result = FizzBuzz.evaluate(number: sample)
            
            XCTAssertEqual(result, "Fizz", "for sample: \(sample)")
        }
    }
    
    func test_evaluate_deliversFizzOnNumbersDivisibleByFive() {

        let samples = [5, 10, 15, 100, 75]
        
        for sample in samples {
            
            let result = FizzBuzz.evaluate(number: sample)
            
            XCTAssertEqual(result, "Buzz", "for sample: \(sample)")
        }
    }
}
