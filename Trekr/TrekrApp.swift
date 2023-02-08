//
//  TrekrApp.swift
//  Trekr
//
//  Created by Adi Amoyal on 07/02/2023.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    @State private var selection = 1
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                .tag(1)
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                .tag(2)
            }
            .environmentObject(locations)
            
        }
    }
}
