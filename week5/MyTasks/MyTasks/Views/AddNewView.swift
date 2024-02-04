//
//  AddNewView.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct AddNewView: View {
    @State private var taskTitle = ""
    @State private var notes = ""
    
    @ObservedObject var noteslist: NotesContainer
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Task Title") {
                    TextField("Title", text: $taskTitle)
                }
                Section("Notes") {
                    TextField("Notes", text: $notes, axis: .vertical)
                        .lineLimit(5...)
                }
            }
            .navigationTitle("Add New Task")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresented.toggle()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        noteslist.addNotes(title: taskTitle, notes: notes, isComplete: false)
                        isPresented.toggle()
                    }
                    .disabled(taskTitle.count == 0 ? true : false)
                }
            }
        }
    }
    
    
    
}

#Preview {
    AddNewView(noteslist: NotesContainer(), isPresented: .constant(true))
}
