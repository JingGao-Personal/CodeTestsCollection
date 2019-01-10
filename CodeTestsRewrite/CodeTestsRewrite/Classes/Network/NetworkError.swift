//
//  NetworkError.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 8/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation
enum NetworkError: Error, Equatable {
    
    case invalidUrl
    case noNetwork
    case timeOut
    case invalidData
    case parsing
    case api
    case request(error: Error)
    
    static func == (lhs: NetworkError, rhs: NetworkError) -> Bool {
        switch (lhs, rhs) {
        case (.invalidUrl, .invalidUrl): return true
        case (.noNetwork, .noNetwork): return true
        case (.timeOut, .timeOut): return true
        case (.invalidData, .invalidData): return true
        case (.parsing, .parsing): return true
        case (.api, .api): return true
        case (.request(error: let _lhs),.request(error: let _rhs)): return (_lhs as NSError) == (_rhs as NSError)
        default:
            return false
        }
    }
}

extension NetworkError {
    init(error: NSError) {
        switch error.code {
        case NSURLErrorTimedOut: self = .timeOut
        case NSURLErrorNotConnectedToInternet: self = .noNetwork
        case NSURLErrorBadURL: self = .invalidUrl
        case NSURLErrorCannotParseResponse: self = .parsing
        case NSURLErrorDataNotAllowed: self = .invalidData
        default: self = .api
        }
    }
}
