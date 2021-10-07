//
//  Task.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/5/21.
//

import Foundation

class TaskClass: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date? // Optional
}

