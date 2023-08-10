//
//  Created by Peter Combee on 10/08/2023.
//

import XCTest

// Fizz buzz
// Delivers fizz on any number divisible by 3
// Delivers buzz on any number divisible by 5
// Delivers fissbuzz on any number that is divisible by both 3 and 5

enum FizzBuzz {
    static func evaluate(number: Int) -> String { "Fizz" }
}

final class FizzBuzzTests: XCTestCase {

    func test_evaluate_deliversFizzOnNumbersDivisibleByThree() {

        let samples = [3, 6, 9, 12, 300]
        
        for sample in samples {
            
            let result = FizzBuzz.evaluate(number: sample)
            
            XCTAssertEqual(result, "Fizz", "for sample: \(sample)")
        }
    }
}
