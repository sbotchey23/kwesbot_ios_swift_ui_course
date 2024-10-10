//
//  ContentView.swift
//  Todo App
//
//  Created by Kwesi A Botchey on 30/09/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // MARK: - PROPERTIES
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        entity: Todo.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Todo.name, ascending: true)],
        animation: .default)
        var todos: FetchedResults<Todo>
    
    @State private var showingAddTodoView: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(self.todos, id: \.self) { todo in
                        HStack() {
                            Text(todo.name ?? "unknown")
                            
                            Spacer()
                            
                            Text(todo.priority ?? "unknown")
                        } //: HSTACK
                        
                    } //: FOR EACH
                    .onDelete(perform: deleteTodo)
                    
                } //: LIST
                .navigationBarTitle("Todo", displayMode: .inline)
                .toolbar {
#if os(iOS)
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    } //: TOOLBAR ITEM
#endif
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            self.showingAddTodoView.toggle()
                        }) {
                            Label("Add Item", systemImage: "plus")
                        } //: ADD BUTTON
                        .sheet(isPresented: $showingAddTodoView) {
                            AddTodoView().environment(\.managedObjectContext, self.viewContext)
                        }
                    } //: TOOLBAR ITEM
                } //: TOOLBAR
                
                // MARK: - NO TODO ITEMS
                if todos.count == 0 {
                    EmptyListView()
                }
                
            } //: ZSTACK
            
        } //: NAVIGATION VIEW
    }
    
    // MARK: - FUNCTIONS
    private func deleteTodo(at offsets: IndexSet) {
        for index in offsets {
            let todo = todos[index]
            viewContext.delete(todo)
            
            do {
                try viewContext.save()
            } catch {
                print(error)
            }
        }
    }
    
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    return formatter
}()

// MARK: - PREVIEW
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
