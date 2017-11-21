//
//  QuestionViewControllerTests.swift
//  AssessmentAppTests
//
//  Created by Zachary Hardin on 11/21/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import Quick
import Nimble

@testable import AssessmentApp

class QuestionViewControllerTests: QuickSpec {
    
    override func spec() {
        
        describe("question page") {
            context("first question") {
                let controller: QuestionViewController = QuestionViewController()
                
                it("has a question") {
                    expect(controller.firstQuestion.text).to(equal("I like to work with computers"))
                }
            }
        }
    }
    
}
