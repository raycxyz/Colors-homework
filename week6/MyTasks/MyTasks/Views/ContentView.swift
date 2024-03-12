//
//  ContentView.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject var notesContainer = NotesContainer()
    @State private var addNew = false
    @State private var search = ""

    var searchResult: [NewNotes] {
        var result = [NewNotes]()
        
        for note in notesContainer.listOfNotes {
            if note.taskTitle.lowercased().contains(search.lowercased()) {
                result.append(note)
            }
        }
        return result
    }
    
    var incompleteList: [NewNotes] {
        notesContainer.listOfNotes.filter { !$0.isComplete }
    }
    
    var completeList: [NewNotes] {
        notesContainer.listOfNotes.filter { $0.isComplete }
    }

    
    var body: some View {
        NavigationStack {
            TabView {
                List(incompleteList) { note in
                    NavigationLink(value: note) {
                        RowView(newNotes: $notesContainer.listOfNotes.first(where: {
                            $0.id == note.id
                        })!)
                    }
                }
                .tabItem {
                    Label("Tasks", systemImage: "list.bullet.circle")
                }
                
                
                List(completeList) { note in
                    NavigationLink(value: note) {
                        RowView(newNotes: $notesContainer.listOfNotes.first(where: {
                            $0.id == note.id
                        })!)
                    }
                }
                .tabItem {
                    Label("Completed", systemImage: "checkmark.circle")
                }
                
            }
            .searchable(text: $search) {
                ForEach(searchResult) { note in
                    NavigationLink(value: note) {
                        RowView(newNotes: $notesContainer.listOfNotes.first(where: {
                            $0.id == note.id
                        })!)
                    }
                }
            }
            .navigationDestination(for: NewNotes.self) { note in
                DetailsView(newNotes: $notesContainer.listOfNotes.first(where: { $0.id == note.id })!)
            }
            .listStyle(.plain)
            .navigationTitle("My Tasks")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        addNew.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Task")
                    }
                    Spacer()
                }
            }
            .sheet(isPresented: $addNew, content: {
                AddNewView(noteslist: notesContainer, isPresented: $addNew)
            })
            
          
        }
    }
}

#Preview {
    ContentView()
}
