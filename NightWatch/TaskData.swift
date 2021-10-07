//
//  TaskData.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/6/21.
//

import Foundation

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

let nightlyTaskObjs = [
    Task(name: "Check all windows", isComplete: false, lastCompletedDate: nil),
    Task(name: "Check all doors", isComplete: false, lastCompletedDate: nil),
    Task(name: "Check the safe is locked", isComplete: false, lastCompletedDate: nil),
    Task(name: "Check the mailbox", isComplete: false, lastCompletedDate: nil),
    Task(name: "Inspect security cameras", isComplete: false, lastCompletedDate: nil),
    Task(name: "Clear ice from sidewalks", isComplete: false, lastCompletedDate: nil),
    Task(name: "Document \"strange and unusual\" occurences", isComplete: false, lastCompletedDate: nil),
    Task(name: "One item too many", isComplete: false, lastCompletedDate: nil),
]

let weeklyTaskObjs = [
    Task(name: "Check inside all vacant rooms", isComplete: false, lastCompletedDate: nil),
    Task(name: "Walk the perimeter of the property", isComplete: false, lastCompletedDate: nil),
]

let monthlyTaskObjs = [
    Task(name: "Test Security alarm", isComplete: false, lastCompletedDate: nil),
    Task(name: "Test motion detectors", isComplete: false, lastCompletedDate: nil),
    Task(name: "Test smoke alarm", isComplete: false, lastCompletedDate: nil),
]
