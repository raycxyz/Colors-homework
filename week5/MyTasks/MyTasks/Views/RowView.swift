//
//  NotesRow.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct RowView: View {
    let newNotes: NewNotes

    var body: some View {
        VStack {
            HStack {
                Text(newNotes.taskTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.blue)
                Spacer()
                Image(systemName: newNotes.isComplete ? "checkmark.square": "square")
                    .foregroundStyle(newNotes.isComplete ? .green : .red)
            }
            Divider()
                .padding(.vertical, 10)
        }
    }
}

#Preview {
    RowView(newNotes: .init(taskTitle: "Test 1", notes: "Notes 1", isComplete: true))
}

#Preview {
    ContentView()
}

