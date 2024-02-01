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
    
    
    func addNotes(title: String, notes: String, isComplete: Bool = false) {
        let newNote = NewNotes(taskTitle: title, notes: notes, isComplete: isComplete)
        listOfNotes.append(newNote)
    }  
}



struct NewNotes {
    var id = UUID()
    let taskTitle: String
    let notes: String
    var isComplete: Bool
}

extension NewNotes: Identifiable, Hashable {}




