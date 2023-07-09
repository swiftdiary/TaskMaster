//
//  TaskMasterApp.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import SwiftUI
import SwiftData

@main
struct TaskMasterApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [TaskItem.self])
        }
    }
}
