//
//  Sport.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 18/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

struct Sport: Codable {
    enum CodingKeys: String, CodingKey {
        case _sportID
        case _description
    }
    
    var _sportID: String = ""
    var _description: String = ""
}

// MARK: - Equatable

extension Sport: Equatable {
    static func == (lhs: Sport, rhs: Sport) -> Bool {
        return lhs._sportID == rhs._sportID && lhs._description == rhs._description
    }
}
