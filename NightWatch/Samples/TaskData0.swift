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
    @StateObject private var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    var body: some View {
        VStack {
            HStack{
                Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                Text(theTask.name)
            }
            ControlPanel(isComplete: self.$theTask.isComplete)
        }
    }
}


struct ControlPanel: View {
    @Binding var isComplete: Bool
    var body: some View {
        HStack{
            Button(action: {
                isComplete.toggle()
            }) {
                Text(isComplete ? "Reset" : "Mark Complete")
            }.padding(.top)
        }
    }
}
