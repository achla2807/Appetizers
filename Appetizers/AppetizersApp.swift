//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Achla Ajay on 02/02/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
