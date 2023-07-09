//
//  ContentView.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAddTaskViewPresented: Bool = false
    @State private var isSettingsViewPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            TasksListView()
                .listStyle(.inset)
                .navigationTitle("Tasks 📝")
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            isAddTaskViewPresented.toggle()
                        }, label: {
                            Text("ADD")
                            Image(systemName: "plus")
                        })
                        .buttonStyle(.bordered)
                    }
                }
                .navigationDestination(isPresented: $isAddTaskViewPresented) {
                    AddTaskView()
                }
        }
    }
}

#Preview {
    ContentView()
}
