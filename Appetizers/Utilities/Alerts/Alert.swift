//
//  Alert.swift
//  Appetizers
//
//  Created by Achla Ajay on 05/02/25.
//

import SwiftUI

struct alertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let InvalidData = alertItem(title: Text("Server Error"),
                                              message: Text("The data recieved from the server was invaild. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse = alertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later."),
                                           dismissButton: .default(Text("OK")))
    
    static let InvalidURL = alertItem(title: Text("Server Error"),
                                              message: Text("Issue connecting to the server.If it persists, contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = alertItem(title: Text("Server Error"),
                                              message:Text( "Unable to complete your request at the moment. Please try again later."),
                                              dismissButton: .default(Text("OK")))
    
}
