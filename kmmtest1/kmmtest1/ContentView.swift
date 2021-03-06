import SwiftUI
import kmmtest1_base

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hola")
            HStack {
                Text("1")
                Text("3")
            }
            Text(Greeting().saluda(name: "Santiago"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


struct LoginView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            ContentView().padding(
                EdgeInsets(
                    top: 16,
                    leading: 16,
                    bottom: 16,
                    trailing: 16
                )
            )
            Text(Platform().platform)
            TextField("user", text: $username)
            TextField("password", text: $password)
        }.padding(
            EdgeInsets(
                top: 0,
                leading: 10,
                bottom: 0,
                trailing: 10
            )
        )
    }
    
}
