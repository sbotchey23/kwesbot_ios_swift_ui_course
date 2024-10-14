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
    
    @State private var showingSettingsView: Bool = false
    @State private var showingAddTodoView: Bool = false
    @State private var animatingButton: Bool = false
    
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
                            self.showingSettingsView.toggle()
                        }) {
                            Label("Settings", systemImage: "paintbrush")
                                .imageScale(.large)
                        } //: ADD BUTTON
                        .sheet(isPresented: $showingSettingsView) {
                            SettingsView()
                        }
                    } //: TOOLBAR ITEM
                } //: TOOLBAR
                
                // MARK: - NO TODO ITEMS
                if todos.count == 0 {
                    EmptyListView()
                }
                
            } //: ZSTACK
            .sheet(isPresented: $showingAddTodoView) {
                AddTodoView().environment(\.managedObjectContext, self.viewContext)
            }
            .overlay(
                ZStack {
                    Group {
                        Circle()
                            .fill(Color.blue)
                            .opacity(self.animatingButton ? 0.2 : 0)
                            .scaleEffect(self.animatingButton ? 1 : 0.5)
                            .frame(width: 68, height: 68, alignment: .center)
                        Circle()
                            .fill(Color.blue)
                            .opacity(self.animatingButton ? 0.15 : 0)
                            .scaleEffect(self.animatingButton ? 1 : 0.5)
                            .frame(width: 88, height: 88, alignment: .center)
                    }
                    .animation(Animation.easeInOut(duration: 1.3).repeatForever(autoreverses: true), value: animatingButton)
                    
                    Button(action: {
                        self.showingAddTodoView.toggle()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .background(Circle().fill(Color("ColorBase")))
                            .frame(width: 48, height: 48)
                    } //: ADD BUTTON
                    .onAppear(perform: {
                        self.animatingButton.toggle()
                    })
                } //: ZSTACK
                    .padding(.bottom, 15)
                    .padding(.trailing, 15)
                , alignment: .bottomTrailing
            ) //: OVERLAY
            
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
