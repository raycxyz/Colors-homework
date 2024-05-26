//
//  NewTask.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct DetailsView: View {
    @Binding var newNotes: NewNotes

    var body: some View {
        Form {
            Section("Task Title") {
                TextField("title", text: $newNotes.taskTitle)
            }
            Section("Notes") {
                TextField("title", text: $newNotes.notes)
            }
            Toggle("Completed?", isOn: $newNotes.isComplete)
        }
    }
}




#Preview {
    DetailsView(newNotes: .constant(.init(taskTitle: "test", notes: "test 1", isComplete: true)))
}

