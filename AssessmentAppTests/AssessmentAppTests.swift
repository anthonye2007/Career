//
//  AssessmentAppTests.swift
//  AssessmentAppTests
//
//  Created by Benjamin Walton on 11/14/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import Quick
import Nimble

@testable import AssessmentApp

class AssessmentAppTests: QuickSpec {
    
    override func spec() {
     
        describe("test") {
            context("failing test") {
                it("travis stops build") {
                    expect(1).to(equal(2))
                }
            }
        }
    }
    
}
