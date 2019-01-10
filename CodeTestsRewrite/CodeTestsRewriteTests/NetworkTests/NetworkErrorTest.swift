//
//  NetworkErrorTest.swift
//  CodeTestsRewriteTests
//
//  Created by Jing Gao on 9/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//
import Foundation
import Nimble
import Quick
@testable import CodeTestsRewrite

class NetworkErrorTest: QuickSpec {
    override func spec() {
        describe("Test init func for") {
            context("time out") {
                let error = NSError(domain: "time out", code: NSURLErrorTimedOut, userInfo: nil)
                it("is in error list") {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.timeOut))
                }
            }
        }
    }
}
