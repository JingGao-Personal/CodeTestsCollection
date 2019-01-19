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
    
    private let is_in_error_list = "is in error list"
    
    override func spec() {
        describe("Test init func for") {
            context("time out") {
                let error = NSError(domain: "time out", code: NSURLErrorTimedOut, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.timeOut))
                }
            }
            
            context("no network") {
                let error = NSError(domain: "no network", code: NSURLErrorNotConnectedToInternet, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.noNetwork))
                }
            }
            
            context("invalid url") {
                let error = NSError(domain: "invalid url", code: NSURLErrorBadURL, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.invalidUrl))
                }
            }
            
            context("can not parsing") {
                let error = NSError(domain: "parsing", code: NSURLErrorCannotParseResponse, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.parsing))
                }
            }
            
            context("invalid data") {
                let error = NSError(domain: "invalid", code: NSURLErrorDataNotAllowed, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.invalidData))
                }
            }
            
            context("default error") {
                let error = NSError(domain: "another error", code: NSURLErrorUnknown, userInfo: nil)
                it(self.is_in_error_list) {
                    expect(NetworkError.init(error: error)).to(equal(NetworkError.api))
                }
            }
        }
        
        describe("Test == func for") {
            context("network error's") {
                let lhs = NetworkError.invalidData
                let rhs = NetworkError.api
                it("result is false") {
                    expect(NetworkError.request(error: lhs) == NetworkError.request(error: rhs)).to(equal(false))
                }
            }
        }
    }
}
