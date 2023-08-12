//
//  HomeProvider.swift
//  
//
//  Created by Daniel BR on 11/08/23.
//

import Foundation
import Dependencies

public struct HomeProvider {
    public var getItems: () async -> [String]
    
    public init(getItems: @escaping () async -> [String]) {
        self.getItems = getItems
    }
}
