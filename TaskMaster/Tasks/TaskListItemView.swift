//
//  TaskListItemView.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import SwiftUI

struct TaskListItemView: View {
    @Environment(\.modelContext) var context
    let taskItem: TaskItem
    var body: some View {
        HStack {
            Text(taskItem.title)
                .font(.headline)
            Spacer()
            Text(taskItem.taskDescription ?? "No description")
                .font(.caption)
            Spacer()
            Button {
                markAsDone()
            } label: {
                if !taskItem.isCompleted {
                    Image(systemName: "circle")
                } else {
                    Image(systemName: "checkmark.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white, .green)
                }
            }
        }
        .strikethrough(taskItem.isCompleted, color: .red)
    }
    
    func markAsDone() {
        withAnimation(.spring()) {
            taskItem.isCompleted = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            context.delete(taskItem)
        }
    }
}

#Preview {
    TaskListItemView(taskItem: TaskItem(title: "vvv"))
}
