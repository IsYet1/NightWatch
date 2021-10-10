
import SwiftUI

// Tasks are coming from the Lists.view file

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false
    @State private var resetAlertShowing = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    let taskIndices = nightlyTaskObjs.indices
                    let tasks = nightWatchTasks.nightlyTaskObjs
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    ForEach(taskIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        let nightwatchTaskWrapper = $nightWatchTasks
                        let tasksBinding = nightwatchTaskWrapper.nightlyTaskObjs
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        if !focusModeOn || (focusModeOn && !task.isComplete) {
                            NavigationLink(destination: DetailsView(task: theTaskBinding),
                                           label: {TaskRow(task: task)}
                            )
                        }
                    }).onDelete(perform: {indexSet in
                        nightWatchTasks.nightlyTaskObjs.remove(atOffsets: indexSet)
                    }).onMove(perform: {indices, newOffset in
                            nightWatchTasks.nightlyTaskObjs
                                .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    let taskIndices = weeklyTaskObjs.indices
                    let tasks = nightWatchTasks.weeklyTaskObjs
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    ForEach(taskIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        let nightwatchTaskWrapper = $nightWatchTasks
                        let tasksBinding = nightwatchTaskWrapper.weeklyTaskObjs
                        let theTaskBinding = tasksBinding[taskIndex]
                        if !focusModeOn || (focusModeOn && !task.isComplete) {
                            NavigationLink(destination: DetailsView(task: theTaskBinding),
                                           label: {TaskRow(task: task)}
                            )
                        }
                    }).onDelete(perform: {indexSet in
                        nightWatchTasks.weeklyTaskObjs.remove(atOffsets: indexSet)
                    }).onMove(perform: {indices, newOffset in
                            nightWatchTasks.nightlyTaskObjs
                                .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    let taskIndices = monthlyTaskObjs.indices
                    let tasks = nightWatchTasks.monthlyTaskObjs
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    ForEach(taskIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        let nightwatchTaskWrapper = $nightWatchTasks
                        let tasksBinding = nightwatchTaskWrapper.monthlyTaskObjs
                        let theTaskBinding = tasksBinding[taskIndex]
                        if !focusModeOn || (focusModeOn && !task.isComplete) {
                            NavigationLink(destination: DetailsView(task: theTaskBinding),
                                           label: {TaskRow(task: task)}
                            )
                        }
                    }).onDelete(perform: {indexSet in
                        nightWatchTasks.monthlyTaskObjs.remove(atOffsets: indexSet)
                    }).onMove(perform: {indices, newOffset in
                            nightWatchTasks.nightlyTaskObjs
                                .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Toggle("Focus Mode", isOn: $focusModeOn).toggleStyle(.switch)
                    
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Reset") {
                        resetAlertShowing = true
                    }
                }

            }
        }.alert(isPresented: $resetAlertShowing, content: {
            Alert(title: Text("Reset List"), message: Text("Are you sure?"),
                  primaryButton: .cancel(), secondaryButton: .destructive(Text("Yes, reset it"),
                  action: {
                    let refreshNightWatchTasks = NightWatchTasks()
                    self.nightWatchTasks.nightlyTaskObjs = refreshNightWatchTasks.nightlyTaskObjs
                    self.nightWatchTasks.weeklyTaskObjs = refreshNightWatchTasks.weeklyTaskObjs
                    self.nightWatchTasks.monthlyTaskObjs = refreshNightWatchTasks.monthlyTaskObjs
            }))
        })
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
//            TaskRow(task: Task(name: "Test Task", isComplete: false, lastCompletedDate: nil))
//                .previewLayout(.fixed(width: 300, height: 70))
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
