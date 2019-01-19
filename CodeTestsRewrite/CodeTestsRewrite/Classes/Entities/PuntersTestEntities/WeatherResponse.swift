//
//  Weather.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 17/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

struct WeatherResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case ret
        case isOkay
        case data
    }
    let ret: Bool?
    let isOkay: Bool?
    let data: [Weather]?
}

// MARK: - Equatable

extension WeatherResponse: Equatable {
    static func == (lhs: WeatherResponse, rhs: WeatherResponse) -> Bool {
        return lhs.ret == rhs.ret && lhs.isOkay == rhs.isOkay && lhs.data == rhs.data
    }
}

// MARK: - Convenience

extension WeatherResponse {
    var weathers: [Weather] {
        return data ?? []
    }
    
    var countries: [Country] {
        return (data?.compactMap { $0._country } ?? []).uniqueElements.sorted(by: {
            $0._name < $1._name
        })
    }
    
    var sports: [Sport] {
        return (data?.compactMap {$0._sport} ?? []).uniqueElements
    }
}
