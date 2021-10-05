//
//  TaskData0.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/5/21.
//

import SwiftUI

struct TaskData0_Previews: PreviewProvider {
    static var previews: some View {
        TaskData0()
    }
}

struct TaskData0: View {
    @State var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    var body: some View {
        VStack {
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.$theTask)
        }
    }
}


struct ControlPanel: View {
    @Binding var theTask: Task
    var body: some View {
        HStack{
            Button(action: {
                theTask.isComplete.toggle()
            }) {
                Text(theTask.isComplete ? "Reset" : "Mark Complete")
            }.padding(.top)
        }
    }
}
