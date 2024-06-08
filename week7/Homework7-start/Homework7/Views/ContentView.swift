import SwiftUI


struct ContentView: View {
    @StateObject var list = JSONList()
    
    var body: some View {

        TabView {
            APIListView(list: list)
            .tabItem {
                Image(systemName: "list.bullet.rectangle.fill")
                Text("API")
            }
            
            UserDataView(userData: list)
            .tabItem {
                Image(systemName: "person")
                Text("User Data")
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
