//
//  TaskData0.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/5/21.
//

import SwiftUI

struct TaskData0: View {
    @State var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    var body: some View {
        VStack {
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            Button(action: {
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding(.top)
            Button(action: {
                theTask.isComplete = false
            }) {
                Text("Reset")
            }.padding(.top)
        }
    }
}

struct TaskData0_Previews: PreviewProvider {
    static var previews: some View {
        TaskData0()
    }
}
