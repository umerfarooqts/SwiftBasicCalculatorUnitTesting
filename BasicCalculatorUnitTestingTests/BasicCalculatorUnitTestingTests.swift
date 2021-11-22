//
//  BasicCalculatorUnitTestingTests.swift
//  BasicCalculatorUnitTestingTests
//
//  Created by Umer Farooq on 22/11/2021.
//

import XCTest
@testable import BasicCalculatorUnitTesting

class BasicCalculatorUnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd_CorrectInput_ShouldPass() throws {
        let cases = [(4,3,7), (-1,10,9), (3.1,3.2,6.3), (-1000,1000.0,0)]
        cases.forEach {
            XCTAssertEqual(CalculatorModel.Add(x: $0, y: $1), $2, accuracy: 0.001);
        }
    }
    
    func testSubtract_CorrectInput_ShouldPass() throws {
        let cases = [(4,3,1), (-1,10,-11), (3.1,3.2,-0.1), (-1000,1000.0,-2000)]
        cases.forEach {
            XCTAssertEqual(CalculatorModel.Subtract(x: $0, y: $1), $2, accuracy: 0.001);
        }
    }

    func testMultiply_CorrectInput_ShouldPass() throws {
        let cases = [(4,3,12), (-1,10,-10), (3.1,3.2,9.92), (-1000,1000.0,-1000000)]
        cases.forEach {
            XCTAssertEqual(CalculatorModel.Multiply(x: $0, y: $1), $2, accuracy: 0.001);
        }
    }

    func testDivide_CorrectInput_ShouldPass() throws {
        let cases = [(4,3,1.33), (-1,10,-0.1), (3.1,3.2,0.96875), (-1000,1000.0,-1)]
        cases.forEach {
            XCTAssertEqual(CalculatorModel.Divide(x: $0, y: $1)! , $2, accuracy: 0.01);
        }
    }

    func testDivide_IncorrectInput_ShouldNotPass() throws {
        let cases = [(4,0), (-1,0), (3.1,0), (-1000,0)]
        cases.forEach {
            XCTAssertNil(CalculatorModel.Divide(x: $0, y: Double($1)));
        }
    }
        

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
