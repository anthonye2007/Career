//
//  QuestionViewControllerTests.swift
//  AssessmentAppTests
//
//  Created by Zachary Hardin on 11/21/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import XCTest

@testable import AssessmentApp

class QuestionViewControllerTests: XCTestCase {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShouldContainAQuestion() {
        let vc: QuestionViewController = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
        _ = vc.view
        
        XCTAssertEqual(vc.firstQuestion.text, "I like to work with computers")
    }
}
