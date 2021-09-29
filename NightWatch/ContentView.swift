
import SwiftUI

// Tasks are coming from the Lists.view file

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        // MARK: Night tasks
                        List {
                            HStack {
                                Text(Image(systemName: "moon.stars"))
                                    .foregroundColor(.yellow)
                                Text("Nightly tasks")
                                    .font(.title3)
                                    .foregroundColor(.yellow)
                                    .underline()
                            }
                                
                            Text("- Check all windows")
                            Text("- Check all doors")
                            Text("- Check the safe is locked")
                            Text("- Check the mailbox")
                            Text("- Inspect security cameras")
                            Text("- Clear ice from sidewalks")
                            Text("- Document \"strange and unusual\" occurences")
                            Text("- One item too many")
                        }

                        Divider()
                        HStack {
                            Text(Image(systemName: "sunset"))
                                .foregroundColor(.yellow)
                            Text("- Weekly Tasks")
                                .font(.title3)
                                .foregroundColor(.yellow)
                                .underline()
                            .padding(.top)
                        }
                        Text("- Check inside all vacant rooms")
                        Text("- Walk the perimeter of the property")

                        Divider()
                        HStack {
                            Text(Image(systemName: "calendar"))
                                .foregroundColor(.yellow)
                            Text("- Monthly Tasks")
                                .underline()
                                .foregroundColor(.yellow)
                                .padding(.top)
                        }
                        Text("- Test Security alarm")
                        Text("- Test motion detectors")
                        Text("- Test smoke alarm")
                    }
                    .padding(.all)
                    Spacer()
                }
                Spacer()
            }
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
