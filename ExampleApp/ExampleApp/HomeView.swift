//
//  HomeView.swift
//  ExampleApp
//
//  Created by Daniel BR on 09/08/23.
//

import SwiftUI
import Dependencies

struct HomeView: View {
    
    @Dependency(\.homeProvider) var provider
    
    @State var items: [String] = []
    
    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
        .task {
            self.items = await provider.getItems()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        withDependencies {
            $0.homeProvider.getItems = {
                return ["Preview Apple"]
            }
        } operation: {
            HomeView()
        }
    }
}
