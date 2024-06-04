

import SwiftUI

struct APIDetailView: View {
    var entry: APIs.Entry
    
    var body: some View {
        List {
            HStack {
                Text("API")
                Spacer()
                Text(entry.api)
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text("Description")
                Spacer()
                Text(entry.description)
                    .frame(maxWidth: 200, alignment: .trailing)
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text("Auth")
                Spacer()
                Text(entry.auth)
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text("HTTPS")
                Spacer()
                Text("\(entry.http.description)")
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text("Cors")
                Spacer()
                Text(entry.cors)
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text("Link")
                Spacer()
                Link(entry.link, destination: (URL(string: entry.link) ?? URL(string: "https://www.apple.com"))!)
                    .frame(maxWidth: 200, alignment: .trailing)
            }
            HStack {
                Text("Category")
                Spacer()
                Text(entry.category)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    APIDetailView(entry: JSONList().listOfAPI.entries.first!)
}
