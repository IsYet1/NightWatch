//
//  Navigation.swift
//  NightWatch
//
//  Created by Don McKenzie on 9/29/21.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        VStack {
            NavigationView {
                NavigationLink(destination: VStack {
                    Circle()
                    Text("Next to the circle")
                }.navigationTitle("Page 2")) {Text("Click Here")}
                .navigationTitle("Home")
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
