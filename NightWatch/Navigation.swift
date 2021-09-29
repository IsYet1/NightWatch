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
                NavigationLink(destination: Circle()) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
