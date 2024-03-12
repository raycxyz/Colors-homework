//
//  SearchView.swift
//  MyTasks
//
//  Created by Raymond Ho on 2024-03-03.
//

import SwiftUI

struct SearchView: View {
    var newNotes: NewNotes
    
    var body: some View {
        HStack {
            Text(newNotes.taskTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
            Spacer()
            Button {
//                withAnimation() {
//                    newNotes.isComplete.toggle()
//                }
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
    SearchView(newNotes: NewNotes(taskTitle: "note 1", notes: ""))
}
