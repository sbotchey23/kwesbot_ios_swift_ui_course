//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 29/03/2024.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTY
    let note: Note
    let count: Int
    let index: Int
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundStyle(.accent)
            
            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count)/ \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                
            } //: HSTACK
            .foregroundStyle(.secondary)
            
        } //: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW
#Preview {
    let sampleData: Note = Note(id: UUID(), text: "This is sample data")
    
    return DetailView(note: sampleData, count: 5, index: 1)
}
