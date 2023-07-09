//
//  AddTaskView.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State private var titleTextField: String = ""
    @State private var descriptionTextField: String = ""
    
    
    var body: some View {
        VStack {
            Group {
                TextField("Title", text: $titleTextField)
                    .frame(height: 55)
                TextField("Description", text: $descriptionTextField, axis: .vertical)
                    .lineLimit(5)
                    .frame(minHeight: 55)
            }
            .padding(.horizontal)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(25.0)
            Button("Submit") {
                submit()
                dismiss()
            }
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

extension AddTaskView {
    
    func submit() {
        guard !titleTextField.isEmpty else { return }
        let newTask = TaskItem(title: titleTextField, taskDescription: descriptionTextField.isEmpty ? nil : descriptionTextField)
        context.insert(newTask)
    }
    
}

#Preview {
    AddTaskView()
}
