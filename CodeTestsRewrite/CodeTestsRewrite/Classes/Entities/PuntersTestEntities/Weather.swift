//
//  Weather.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 19/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//

struct Weather: Codable {
    enum CodingKeys: String, CodingKey {
        case _venueID
        case _name
        case _country
        case _weatherCondition
        case _weatherConditionIcon
        case _weatherWind
        case _weatherHumidity
        case _weatherTemp
        case _weatherFeelsLike
        case _sport
        case _weatherLastUpdated
    }
    
    var _venueID: String = ""
    var _name: String = ""
    var _country: Country?
    var _weatherCondition: String = ""
    var _weatherConditionIcon: String = ""
    var _weatherWind: String = ""
    var _weatherHumidity: String = ""
    var _weatherTemp: String = ""
    var _weatherFeelsLike: String = ""
    var _sport: Sport?
    var _weatherLastUpdated: String = ""
}

// MARK: - Equatable

extension Weather: Equatable {
    static func == (lhs: Weather, rhs: Weather) -> Bool {
        return lhs._venueID == rhs._venueID && lhs._name == rhs._name && lhs._country == rhs._country && lhs._weatherCondition == rhs._weatherCondition && lhs._weatherWind == rhs._weatherWind && lhs._weatherHumidity == rhs._weatherHumidity && lhs._weatherTemp == rhs._weatherTemp && lhs._weatherFeelsLike == rhs._weatherFeelsLike && lhs._sport == rhs._sport && lhs._weatherLastUpdated == rhs._weatherLastUpdated
    }
}
