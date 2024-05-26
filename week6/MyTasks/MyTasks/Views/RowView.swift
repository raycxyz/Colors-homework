//
//  NotesRow.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-01-28.
//

import SwiftUI

struct RowView: View {
    @Binding var newNotes: NewNotes
    @State var copyNote = false
    
    var body: some View {
        
        HStack {
            Text(newNotes.taskTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
            Spacer()
            Button {
                withAnimation() {
                    copyNote.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation() {
                            newNotes.isComplete.toggle()
                        }
                    }
                }
            } label: {
                Image(systemName: copyNote ? "checkmark.square": "square")
                    .foregroundStyle(copyNote ? .green : .red)
            }
            .buttonStyle(PlainButtonStyle())
            
        }
        .padding(.vertical, 10)
        .onAppear {
            copyNote = newNotes.isComplete
        }

    }
}

//#Preview {
//    RowView(newNotes: .constant(.init(taskTitle: "title", notes: "notes")))
//}

#Preview {
    ContentView()
}

