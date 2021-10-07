//
//  Task.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/6/21.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompletedDate: Date?
}
