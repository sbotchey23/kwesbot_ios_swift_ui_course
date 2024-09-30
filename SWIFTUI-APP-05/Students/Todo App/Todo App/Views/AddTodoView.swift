//
//  AddTodoView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 30/09/2024.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - PROPERTIES
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - TODO NAME
                    TextField("Todo", text: $name)
                        
                    // MARK: - TODO PRIORITY
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        } //: FOR EACH
                    } //: PICKER
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - SAVE BUTTON
                    Button(action: {
                        print("Save a new todo item.")
                    }) {
                        Text("Save")
                    } //: SAVE BUTTON
                    
                } //: FORM
                
                Spacer()
                
            } //: VSTACK
            .navigationBarTitle("New Todo", displayMode: .inline)
            
        } //: NAVIGATION VIEW
    }
}
    // MARK: - PREVIEW
#Preview {
    AddTodoView()
}
