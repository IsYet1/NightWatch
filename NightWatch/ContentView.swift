
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Nightly tasks")
                    Text("Check all windows")
                    Text("Check all doors")
                    Text("Check the safe is locked")
                    Text("Check the mailbox")
                    Text("Inspect security cameras")
                    Text("Clear ice from sidewalks")
                    Text("Document \"strange and unusual\" occurences")
                    Text("Weekly Tasks")
                    Text("Monthly Tasks")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
