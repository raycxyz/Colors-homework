
import SwiftUI

struct APIListView: View {
    @ObservedObject var list: JSONList
    
    var body: some View {
        NavigationStack {
            List {
                Section("\(list.listOfAPI.count) entries") {
                    ForEach(list.listOfAPI.entries) { entry in
                        NavigationLink(entry.api) {
                            APIDetailView(entry: entry)
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    APIListView(list: JSONList())
}
