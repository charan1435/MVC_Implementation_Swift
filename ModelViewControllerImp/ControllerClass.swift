//
//  ControllerClass.swift
//  ModelViewControllerImp
//
//  Created by Sabith Salman on 2024-11-25.
//

import Foundation

class ControllerClass : ObservableObject{
    @Published var tasks: [Task] = [
        Task(title: "Study", isCompleted: false),
        Task(title: "Work", isCompleted: false),
        Task(title: "Play", isCompleted: false)
    ]
    
    func addTask(title: String, isCompleted: Bool){
        let newTask = Task(title: title , isCompleted: isCompleted)
        tasks.append(newTask)
    }
    
    func toggleTaskCompletion(task: Task){
        if let index = tasks.firstIndex(where: {
            $0.id == task.id}){
            tasks[index] = Task(title: task.title, isCompleted: !task.isCompleted)
        }
        }
        
    }

