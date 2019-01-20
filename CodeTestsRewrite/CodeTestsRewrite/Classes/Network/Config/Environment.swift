//
//  Environment.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 8/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation

protocol Environment {
    static var session: URLSession { get }
    static var puntersTestUrl: String { get }
}

// MARK: - Environment Configurations

struct DevEnvionment: Environment {
    static var session: URLSession = URLSession.shared
    static var puntersTestUrl: String = "http://dnu5embx6omws.cloudfront.net/venues/weather.json"
}
