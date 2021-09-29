//
//  Lists.swift
//  NightWatch
//
//  Created by Don McKenzie on 9/29/21.
//

import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document \"strange and unusual\" occurences",
    "One item too many",
]

let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of the property",
]

let monthlyTasks = [
    "Test Security alarm",
    "Test motion detectors",
    "Test smoke alarm",
]

struct Lists: View {
    var body: some View {
        List {
            Section(header: HStack{
                Text(Image(systemName: "moon.stars"))
                Text("Nightly tasks")
                    .font(.title3)
                    .underline()
            }) {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            Section(header: HStack{
                Text(Image(systemName: "sunset"))
                Text("- Weekly Tasks")
                    .font(.title3)
                    .underline()
            }) {
                ForEach(weeklyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            Section(header: HStack{
                Text(Image(systemName: "calendar"))
                Text("- Monthly Tasks")
                    .font(.title3)
                    .underline()

            }) {
                ForEach(monthlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }

        }
        .listStyle(GroupedListStyle())
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
