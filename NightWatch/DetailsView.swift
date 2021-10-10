//
//  DetailsView.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/4/21.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        VStack {
            Text(task.name)
            
            if verticalSizeClass == .regular {
                Divider()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.").padding()
            }
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

