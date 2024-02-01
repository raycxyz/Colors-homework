//
//  ContentView.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject var notesContainer = NotesContainer()
    @State private var isPresented = false

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach($notesContainer.listOfNotes) { $note in
                    NavigationLink(destination: DetailsView(newNotes: $note)) {
                        RowView(newNotes: note)
                    }
                }
                .padding()
            }

            .navigationTitle("My Tasks")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Task")
                    }
                    Spacer()
                }
            }
            .sheet(isPresented: $isPresented, content: {
                AddNewView(noteslist: notesContainer, isPresented: $isPresented)
            })
            
        }
    }
}

#Preview {
    ContentView()
}
