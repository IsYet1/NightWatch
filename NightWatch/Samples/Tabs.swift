//
//  Tabs.swift
//  NightWatch
//
//  Created by Don McKenzie on 10/4/21.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            HomeView().tabItem {
                /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                Image(systemName: "moon.stars")
            }
            MapView().tabItem {
                /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                Image(systemName: "map")
            }
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Tab Label 3")
            }
        }
    }
}

struct HomeView: View{
    var body: some View {
        Text("Home View here")
    }
}

struct MapView: View{
    var body: some View {
        Text("Map View here")
    }
}

struct SettingsView: View{
    var body: some View {
        Text("Settings View here")
    }
}


struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
