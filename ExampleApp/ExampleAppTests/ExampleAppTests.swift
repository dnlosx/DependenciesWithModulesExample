//
//  ExampleAppTests.swift
//  ExampleAppTests
//
//  Created by Daniel BR on 09/08/23.
//

import XCTest
@testable import ExampleApp
import Dependencies
import CoreModule

final class ExampleAppTests: XCTestCase {

    func testHomeDependencies() async throws {
        
        @Dependency(\.homeProvider) var provider
        
        await withDependencies {
            $0.homeProvider.getItems = {
                return  ["Apple tests"]
            }
        } operation: {
            let items = await provider.getItems()
            XCTAssertEqual(items, ["Apple tests"])
        }
    }
    
}
