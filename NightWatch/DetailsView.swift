//
//  DetailsView.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/4/21.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for Task Descr")
            Button(action: {
                task.isComplete.toggle()
            }) {
                Text(task.isComplete ? "Reset" : "Mark Complete")
            }.padding(.top)
        }
    }}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name: "Preview task", isComplete: false, lastCompletedDate: nil)))
    }
}

//struct ControlPanel1: View {
//    @ObservedObject var theTask: TaskClass
//    var body: some View {
//        HStack{
//            Button(action: {
//                theTask.isComplete.toggle()
//            }) {
//                Text(theTask.isComplete ? "Reset" : "Mark Complete")
//            }.padding(.top)
//        }
//    }
//}
