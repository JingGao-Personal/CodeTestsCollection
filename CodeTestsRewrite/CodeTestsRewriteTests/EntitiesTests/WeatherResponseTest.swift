//
//  WeatherResponseTest.swift
//  CodeTestsRewriteTests
//
//  Created by Jing Gao on 19/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import CodeTestsRewrite

class WeatherResponseTest: QuickSpec {
    
    override func spec() {
        describe("Test WeatherResponse model") {
            context("should contain") {
                let weatherResponse: WeatherResponse = WeatherResponse(ret: true, isOkay: true, data: [])
                it("correct data") {
                    expect(weatherResponse.ret).to(equal(true))
                    expect(weatherResponse.isOkay).to(equal(true))
                    expect(weatherResponse.data).to(equal([]))
                }
            }
        }
    }
}
