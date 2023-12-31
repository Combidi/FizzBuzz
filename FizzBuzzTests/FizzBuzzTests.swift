//
//  Created by Peter Combee on 10/08/2023.
//

import XCTest

// Fizz buzz
// Delivers fizz on any number divisible by 3
// Delivers buzz on any number divisible by 5
// Delivers fissbuzz on any number that is divisible by both 3 and 5
// Delivers number on any number that is not divisible by either 3 or 5
// Delivers 0 on 0

enum FizzBuzz {
    static func evaluate(number: Int) -> String {
        if number == 0 { return "0" }
        if number.isMultiple(of: 3) && number.isMultiple(of: 5) { return "FizzBuzz" }
        if number.isMultiple(of: 5) { return "Buzz" }
        if number.isMultiple(of: 3) { return "Fizz" }
        return String(number)
    }
}

final class FizzBuzzTests: XCTestCase {

    func test_evaluate_deliversFizzOnNumbersDivisibleByThree() {
        let samples = [3, 6, 9, 12, 18]
        assertThatEvaluateDelivers("Fizz", forNumbers: samples)
    }
    
    func test_evaluate_deliversFizzOnNumbersDivisibleByFive() {
        let samples = [5, 10, 50, 100]
        assertThatEvaluateDelivers("Buzz", forNumbers: samples)
    }
    
    func test_evaluate_deliversFizzBuzzOnNumbersDivisibleByBothThreeAndFive() {
        let samples = [15, 30, 90]
        assertThatEvaluateDelivers("FizzBuzz", forNumbers: samples)
    }

    func test_evaluate_deliversZeroOnZero() {
        assertThatEvaluateDelivers("0", forNumber: 0)
    }
    
    func test_evaluate_deliversNumberAsStringForNumbersNotDivisibleByEitherThreeOrFive() {
        assertThatEvaluateDelivers("11", forNumber: 11)
        assertThatEvaluateDelivers("43", forNumber: 43)
        assertThatEvaluateDelivers("77", forNumber: 77)
    }
    
    // MARK: Helpers
    
    private func assertThatEvaluateDelivers(_ expectedResult: String, forNumbers numbers: [Int], file: StaticString = #filePath, line: UInt = #line) {
        for number in numbers {
            assertThatEvaluateDelivers(expectedResult, forNumber: number, file: file, line: line)
        }
    }
    
    private func assertThatEvaluateDelivers(_ expectedResult: String, forNumber number: Int, file: StaticString = #filePath, line: UInt = #line) {
        let result = FizzBuzz.evaluate(number: number)
        
        XCTAssertEqual(result, expectedResult, "for sample: \(number)", file: file, line: line)
    }
}
