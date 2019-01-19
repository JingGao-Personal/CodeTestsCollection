//
//  Sequence+UniqueElements.swift
//  CodeTestsRewrite
//
//  Created by Jing Gao on 19/1/19.
//  Copyright © 2019 Jing Gao. All rights reserved.
//
// Reference:
// https://stackoverflow.com/questions/25738817/removing-duplicate-elements-from-an-array-in-swift

extension Sequence where Element: Equatable {
    var uniqueElements: [Element] {
        return self.reduce(into: []) { _uniqueElements, element in
            if !_uniqueElements.contains(element) {
                _uniqueElements.append(element)
            }
        }
    }
}
