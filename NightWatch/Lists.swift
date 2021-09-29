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
//        List(nightlyTasks, id: \.self, rowContent: {
//            taskName in
//            Text(taskName)
//        })
        List {
            ForEach(nightlyTasks, id: \.self, content: {
                taskName in
                Text(taskName)
            })
            ForEach(weeklyTasks, id: \.self, content: {
                taskName in
                Text(taskName)
            })
            ForEach(monthlyTasks, id: \.self, content: {
                taskName in
                Text(taskName)
            })

        }
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
