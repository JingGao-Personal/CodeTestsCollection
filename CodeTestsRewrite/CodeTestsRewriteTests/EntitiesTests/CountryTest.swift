//
//  Country.swift
//  CodeTestsRewriteTests
//
//  Created by Jing Gao on 20/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import CodeTestsRewrite

class CountryTest: QuickSpec {
    override func spec() {
        describe("The Country model") {
            context("should contain") {
                let country: Country = Country(_countryID: "test", _name: "test")
                it("correct data") {
                    expect(country._countryID).to(equal("test"))
                    expect(country._name).to(equal("test"))
                }
            }
        }
    }
}
