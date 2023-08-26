//
//  FoodCaloriesApp.swift
//  FoodCalories
//
//  Created by Kazuki Omori on 2023/08/26.
//

import SwiftUI

@main
struct FoodCaloriesApp: App {
    
    @StateObject private var dateController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dateController.container.viewContext)
        }
    }
}
