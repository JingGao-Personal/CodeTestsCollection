//
//  Country.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 19/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

struct Country: Codable {
    enum CodingKeys: String, CodingKey {
        case _countryID
        case _name
    }
    
    var _countryID: String = ""
    var _name: String = ""
}

// MARK: - Equatable

extension Country: Equatable {
    static func == (lhs: Country, rhs: Country) -> Bool {
        return lhs._countryID == rhs._countryID && lhs._name == rhs._countryID
    }
}
