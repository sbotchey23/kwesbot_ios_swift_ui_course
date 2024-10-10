//
//  AddTodoView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 30/09/2024.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) var viewContext
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""

    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 20) {
                    // MARK: - TODO NAME
                    TextField("Todo", text: $name)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .clipShape(RoundedRectangle(cornerRadius: 9))
                        .font(.system(size: 24, weight: .bold, design: .default))
                        
                    // MARK: - TODO PRIORITY
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        } //: FOR EACH
                    } //: PICKER
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - SAVE BUTTON
                    Button(action: {
                        if self.name != "" {
                            let todo = Todo(context: self.viewContext)
                            todo.name = self.name
                            todo.priority = self.priority
                            
                            do {
                                try self.viewContext.save()
                            } catch {
                                print(error)
                            }
                        } else {
                            self.errorShowing = true
                            self.errorTitle = "Invalid Name"
                            self.errorMessage = "Make sure you enter something for \nthe todo item!"
                            return
                        }
                        self.dismiss()
                    }) {
                        Text("Save")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                            .foregroundStyle(Color.white)
                    } //: SAVE BUTTON
                    
                } //: VSTACK
                .padding(.horizontal)
                .padding(.vertical, 30)
                
                Spacer()
                
            } //: VSTACK
            .navigationBarTitle("New Todo", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss", systemImage: "xmark") {
                        dismiss()
                    }
                }
            } //: TOOLBAR
            .alert(isPresented: $errorShowing) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            } //: ALERT
        } //: NAVIGATION VIEW
    }
}
    // MARK: - PREVIEW
#Preview {
    AddTodoView()
}
