//
//  SportTest.swift
//  CodeTestsRewriteTests
//
//  Created by Jing Gao on 20/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import CodeTestsRewrite

class SportTest: QuickSpec {
    override func spec() {
        describe("The Sport model") {
            context("should contain") {
                let sport: Sport = Sport(_sportID: "test", _description: "test")
                it("correct data") {
                    expect(sport._sportID).to(equal("test"))
                    expect(sport._description).to(equal("test"))
                }
            }
        }
    }
}
