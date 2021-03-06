//
//  MVVM_Pattern_in_iOSTests.swift
//  MVVM-Pattern-in-iOSTests
//
//  Created by Vinay Ganesh on 8/2/16.
//  Copyright (c) 2016 goldy. All rights reserved.
//

import XCTest
@testable import MVVM_Pattern_in_iOS

class MVVM_Pattern_in_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testPersonWithChange(){
        let person = Person(fname: "Steve", lname: "Waugh")
        let personViewModel = PersonViewModel(person: person)
        XCTAssertEqual(personViewModel.lastName, "Morton")
    }

    func testPersonWithoutChange(){
        let person = Person(fname: "Steve", lname: "Waugh")
        let personViewModel = PersonViewModel(person: person)
        XCTAssertEqual(personViewModel.lastName, "Morton")
    }
    
}
