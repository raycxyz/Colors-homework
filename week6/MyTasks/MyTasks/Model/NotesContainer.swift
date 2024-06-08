//
//  NotesList.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import Foundation
import SwiftUI

class NotesContainer: ObservableObject{
    static let defaultNotes = [
    NewNotes(taskTitle: "Note 1", notes: "Note Section 1", isComplete: true),
    NewNotes(taskTitle: "Note 2", notes: "Note Section 2", isComplete: false),
    NewNotes(taskTitle: "Note 3", notes: "Note Section 3", isComplete: true),
    NewNotes(taskTitle: "Note 4", notes: "Note Section 4", isComplete: false),
    NewNotes(taskTitle: "Note 5", notes: "Note Section 5", isComplete: true)
    ]
    
    @Published var listOfNotes = defaultNotes
    
    
    func addNotes(title: String, notes: String) {
        let newNote = NewNotes(taskTitle: title, notes: notes)
        listOfNotes.append(newNote)
    }
    
    func binding(for task: NewNotes) -> Binding<NewNotes> {
        guard let taskIndex = listOfNotes.firstIndex(where: {
            $0.id == task.id} ) else {
            fatalError()
        }
        
        return Binding<NewNotes> (
            get: {self.listOfNotes[taskIndex]},
            set: {self.listOfNotes[taskIndex] = $0 }
        )
    }
    
    

}



struct NewNotes: Identifiable, Hashable {
    var id = UUID()
    var taskTitle: String
    var notes: String
    var isComplete: Bool = false
}






