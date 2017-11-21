//
//  ViewControllerTest.swift
//  AssessmentAppTests
//
//  Created by Zachary Hardin on 11/21/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import XCTest

@testable import AssessmentApp

class ViewControllerTest: XCTestCase {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let viewController: ViewController = storyboard.instantiateInitialViewController() as! ViewController
        _ = viewController.view
        
        XCTAssertNotNil(viewController)
    }
}
