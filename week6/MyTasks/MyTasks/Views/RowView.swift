//
//  NotesRow.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct RowView: View {
    @Binding var newNotes: NewNotes
    //    @ObservedObject var notesContainer: NotesContainer
    
    var body: some View {
        
        HStack {
            Text(newNotes.taskTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
            Spacer()
            Button {
                withAnimation() {
                    newNotes.isComplete.toggle()
                }
            } label: {
                Image(systemName: newNotes.isComplete ? "checkmark.square": "square")
                    .foregroundStyle(newNotes.isComplete ? .green : .red)
            }
            .buttonStyle(PlainButtonStyle())
            
        }
        .padding(.vertical, 10)
        
    }
}

#Preview {
    RowView(newNotes: .constant(.init(taskTitle: "title", notes: "notes")))
}

//#Preview {
//    ContentView()
//}

