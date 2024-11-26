//
//  AddTaskView.swift
//  ModelViewControllerImp
//
//  Created by Sabith Salman on 2024-11-25.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.dismiss) var dismiss
    @State var inTitle: String = ""
    @State var isCompleted: Bool = false
    
    @ObservedObject var taskController: ControllerClass
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Enter Task Tite", text: $inTitle)
                Toggle("Is Task Completed", isOn: $isCompleted )
            }
            .navigationTitle("Add Task")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        taskController.addTask(title: inTitle, isCompleted: isCompleted)
                        dismiss()
                    }) {
                        Text("Save")
                            .bold()
                        
                    }
                }
            }
            
            
        }
        
    }
    
}
#Preview {
    AddTaskView(taskController: ControllerClass())
}
