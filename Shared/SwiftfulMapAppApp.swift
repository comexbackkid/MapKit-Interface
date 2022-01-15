//
//  SwiftfulMapAppApp.swift
//  Shared
//
//  Created by Christian Nachtrieb on 1/13/22.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
