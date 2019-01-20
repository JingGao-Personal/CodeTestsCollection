//
//  EnvironmentInjector.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 8/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

import Foundation

extension Injector {
    struct Env {
        static var session: URLSession = DevEnvionment.session
        static var puntersTestUrl: String = DevEnvionment.puntersTestUrl
    }
}

// MARK: - EnvironmentInjected

protocol EnvironmentInjected {}

extension EnvironmentInjected {
    var session: URLSession { return Injector.Env.session }
    var puntersTestUrl: String { return Injector.Env.puntersTestUrl }
}
