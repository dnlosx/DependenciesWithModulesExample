//
//  NetworkProvider.swift
//  
//
//  Created by Daniel BR on 11/08/23.
//

import Foundation

public struct NetworkingProvider {
    
    
    public static func getHomeItems() async -> [String] {
        
        return [
            "Apple from Networking",
            "Pear from Networking"
        ]
    }
}
