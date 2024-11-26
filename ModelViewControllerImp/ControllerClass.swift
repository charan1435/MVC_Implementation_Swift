//
//  ControllerClass.swift
//  ModelViewControllerImp
//
//  Created by Sabith Salman on 2024-11-25.
//

import Foundation
import SwiftUI

class ControllerClass : ObservableObject{
    @AppStorage("taskAppStorage") var taskAppStorage : Data = Data()
    @Published var tasks: [Task] = [
        Task(title: "Study", isCompleted: false),
        Task(title: "Work", isCompleted: false),
        Task(title: "Play", isCompleted: false)
    ]
    
    init() {
        loadTask()
        
    }
    
    func addTask(title: String, isCompleted: Bool){
        let newTask = Task(title: title , isCompleted: isCompleted)
        tasks.append(newTask)
        saveTask()
    }
    
    func toggleTaskCompletion(task: Task){
        if let index = tasks.firstIndex(where: {
            $0.id == task.id}){
            tasks[index] = Task(title: task.title, isCompleted: !task.isCompleted)
            saveTask()
        }
        }
    private func saveTask() {
        if let taskdata = try? JSONEncoder().encode(tasks){
            taskAppStorage = taskdata
        }
        
    }
    private func loadTask() {
        if let taskData  = try? JSONDecoder().decode([Task].self, from: taskAppStorage){
            tasks = taskData
        }
    }
        
    }

