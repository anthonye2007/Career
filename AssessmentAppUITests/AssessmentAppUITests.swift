//
//  AssessmentAppUITests.swift
//  AssessmentAppUITests
//
//  Created by Benjamin Walton on 11/14/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import Quick
import Nimble

@testable import AssessmentApp

class AssessmentAppUITests: QuickSpec {
    let app = XCUIApplication()
    
    override func spec() {
        
        describe("login button") {
            beforeEach {
                self.continueAfterFailure = false
                self.app.launch()
            }

            context("is clicked") {
                beforeEach {
                    self.app.buttons["Login"].tap()
                }
                
                it("should render the question view") {
                    expect(self.app.staticTexts["question"].isHittable).toEventually(beTrue())
                }
            }
        }
    }
}
