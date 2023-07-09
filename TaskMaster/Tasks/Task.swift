//
//  Task.swift
//  TaskMaster
//
//  Created by Akbar Khusanbaev on 09/07/23.
//

import Foundation
import SwiftData

@Model
class TaskItem {
    var title: String
    var taskDescription: String?
    var creationDate: Date
    var isCompleted: Bool
    
    init(
        title: String,
        taskDescription: String? = nil,
        creationDate: Date = Date(),
        isCompleted: Bool = false
    ) {
        self.title = title
        self.taskDescription = taskDescription
        self.creationDate = creationDate
        self.isCompleted = isCompleted
    }
}
