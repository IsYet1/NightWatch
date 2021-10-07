
import SwiftUI

// Tasks are coming from the Lists.view file

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightlyTaskObjs, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(weeklyTaskObjs, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach(monthlyTaskObjs, content: {
                        task in
                        NavigationLink(task.name, destination: DetailsView(task: task))
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack{
            Text(Image(systemName: symbolSystemName))
            Text(headerText)
                .font(.title3)
                .underline()
        }
    }
}

