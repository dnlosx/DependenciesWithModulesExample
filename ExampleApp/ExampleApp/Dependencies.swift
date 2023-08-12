//
//  Dependencies.swift
//  ExampleApp
//
//  Created by Daniel BR on 11/08/23.
//

import Foundation
import Dependencies
import CoreModule
import NetworkingModule

enum HomeDataKey: TestDependencyKey {
    static var testValue = HomeProvider { [] }
}

extension HomeDataKey: DependencyKey {
    public static let liveValue = HomeProvider(getItems: NetworkingProvider.getHomeItems)
    public static let previewValue = HomeProvider { [] }
}

extension DependencyValues {
    var homeProvider: HomeProvider {
        get { self[HomeDataKey.self] }
        set { self[HomeDataKey.self] = newValue }
    }
}
 
