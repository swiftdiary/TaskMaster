//
//  TasksListView.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import SwiftUI
import SwiftData

struct TasksListView: View {
    @Environment(\.modelContext) var context
    @Query(sort: \.creationDate, order: .reverse) var taskItems: [TaskItem]
    
    var body: some View {
        if taskItems.isEmpty {
            VStack {
                Text("There is no tasks yet... Tap [ADD +] button above and add your first task 🤩")
                    .font(.headline)
                Spacer()
            }
            .padding()
        } else {
            List(taskItems) { taskItem in
                TaskListItemView(taskItem: taskItem)
            }
        }
    }
}

#Preview {
    NavigationStack {
        TasksListView()
    }
}
