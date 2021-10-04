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
            NavToPage2()
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

struct NavToPage2: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("On top of navigation")
                Spacer()
                
                NavigationLink(destination: Page2())
                {Text("Link to page 2")}
                .navigationTitle("Home Page")
                
                Spacer()
                NavigationLink(destination: Page3())
                {Text("Link to Page 3")}
                

                Spacer()
            }
        }
    }
}

struct Page2: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 120.0, height: 120.0)
            Text("Next to the circle")
            Spacer()

            NavigationLink(destination: Page3())
            {Text("Link to Page 3")}
            
            Spacer()
            
            NavigationLink(destination: Page3())
            {
                ZStack {
                    Circle()
                        .frame(width: 150.0, height: 150.0)
                    Text("Link to Page 3")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                }
            }
            
            
            Spacer()

        }.navigationTitle("Page Two")
    }
}

struct Page3: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 120.0, height: 120.0)

            Text("Next to the square on page 3")
        }.navigationTitle("Page Three")
    }
}


