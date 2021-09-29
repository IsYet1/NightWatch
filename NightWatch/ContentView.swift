
import SwiftUI

// Tasks are coming from the Lists.view file

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                    Text("Weekly Tasks")
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
                    Text("Monthly Tasks")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
