//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - FUNCTIONS
    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    
    func save() {
        //dump(notes)
        
        do {
            // 1. Convert the notes array to data using JSONEncoder
            let data = try JSONEncoder().encode(notes)
            
            // 2. Create a new URL to save the file using the getDocumentDirectory
            let url = getDocumentDirectory().appendingPathComponent("notes")
            
            // 3. Write the data to the given URL
            try data.write(to: url)
            
        } catch {
            print("Saving data has failed!")
        }
    }
    
    func load() {
        do {
            // 1. Get the notes url path
            let url = getDocumentDirectory().appendingPathComponent("notes")
            
            // 2. Create a new property for the data
            let data = try Data(contentsOf: url)
            
            // 3. Decode the data
            notes = try JSONDecoder().decode([Note].self, from: data)
            
        } catch {
            // Do nothing
        }
    }
    
    // MARK: - BODY
    
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Note", text: $text)
                    
                    Button(action: {
                        // 1. only run the button action if the text field is not empty
                        guard text.isEmpty == false else { return }
                        
                        // 2. create a new note item then initialize it with the text field value
                        let note = Note(id: UUID(), text: text)
                        
                        // 3. add new note item to the notes array with (append)
                        notes.append(note)
                        
                        // 4. make text field empty
                        text = ""
                        
                        // 5. Save the notes (function)
                        save()
                        
                        
                    }, label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    })
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundStyle(.accent)
                    //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
                } //: HSTACK
                Spacer()
                
                Text("No. of notes = \(notes.count)")
            } //: VSTACK
            .navigationTitle("Notes")
        } //: NAVIGATIONSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
