//
//  ContentView.swift
//  ModelViewControllerImp
//

//

import SwiftUI

struct ContentView: View {
    @StateObject var taskController = ControllerClass()
    @State var showForm: Bool = false
    var body: some View {
        NavigationStack{
            List(taskController.tasks) {
                list in
                HStack{
                    Text("\(list.title):")
                        .bold()
                        .font(.system(size: 20))
                        
                     
                    Text("\(list.isCompleted ? "Completed" : "Not Completed")")
                }
                .onTapGesture {
                    taskController.toggleTaskCompletion(task: list)
                }
            }
            .navigationTitle("Work To Do")
            .toolbar{
                ToolbarItem(placement:  .navigationBarTrailing){
                    Button(action: {
                        showForm.toggle()
                        
                    }) {
                        Image(systemName: "plus")
                    }
                    
                }
                    
                }
            }
        .sheet(isPresented: $showForm){
            AddTaskView(taskController: taskController)
        }
        
            
        }
    
    }


#Preview {
    ContentView()
}
