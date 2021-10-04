//
//  DetailsView.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/4/21.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for Task Descr")
            Text("Placeholder for Mark Complete button")
        }
    }}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
