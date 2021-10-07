
import SwiftUI

// Tasks are coming from the Lists.view file

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightWatchTasks.nightlyTaskObjs, content: {
                        task in
                        NavigationLink(destination: DetailsView(task: task),
                                       label: {TaskRow(task: task)}
                        )
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(nightWatchTasks.weeklyTaskObjs, content: {
                        task in
                        NavigationLink(destination: DetailsView(task: task),
                                       label: {TaskRow(task: task)}
                        )
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach(nightWatchTasks.monthlyTaskObjs, content: {
                        task in
                        NavigationLink(destination: DetailsView(task: task),
                                       label: {TaskRow(task: task)}
                        )
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
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test Task", isComplete: false, lastCompletedDate: nil))
                .previewLayout(.fixed(width: 300, height: 70))
        }
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


struct TaskRow: View {
    let task: Task
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}
