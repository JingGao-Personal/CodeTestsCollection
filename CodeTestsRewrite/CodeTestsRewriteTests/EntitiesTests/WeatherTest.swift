//
//  WeatherTest.swift
//  CodeTestsRewriteTests
//
//  Created by Jing Gao on 19/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import CodeTestsRewrite

class WeatherTest: QuickSpec {
    override func spec() {
        describe("Test Weather model") {
            context("should contain") {
                let weather: Weather = Weather(_venueID: "test", _name: "test", _country: nil, _weatherCondition: "test", _weatherConditionIcon: "test", _weatherWind: "test", _weatherHumidity: "test", _weatherTemp: "test", _weatherFeelsLike: "test", _sport: nil, _weatherLastUpdated: "test")
                it("correct data") {
                    expect(weather._venueID).to(equal("test"))
                }
            }
        }
    }
}
