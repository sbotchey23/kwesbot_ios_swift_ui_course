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
    
    @EnvironmentObject var iconSettings: IconNames
    
    @State private var showingSettingsView: Bool = false
    @State private var showingAddTodoView: Bool = false
    @State private var animatingButton: Bool = false
    
    // MARK: - THEME PROPERTIES
    @ObservedObject var theme = ThemeSettings.shared
    var themes: [Theme] = themeData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(self.todos, id: \.self) { todo in
                        HStack() {
                            Circle()
                                .frame(width: 12, height: 12, alignment: .center)
                                .foregroundStyle(self.colorize(priority: todo.priority ?? "Normal"))
                            Text(todo.name ?? "Unknown")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text(todo.priority ?? "Unknown")
                                .font(.footnote)
                                .foregroundStyle(Color(UIColor.systemGray2))
                                .padding(3)
                                .frame(minWidth: 62)
                                .overlay(
                                    Capsule().stroke(Color(UIColor.systemGray2), lineWidth: 0.75)
                                )
                            
                        } //: HSTACK
                        .padding(.vertical, 10)
                    } //: FOR EACH
                    .onDelete(perform: deleteTodo)
                    
                } //: LIST
                .navigationBarTitle("Todo", displayMode: .inline)
                .toolbar {
#if os(iOS)
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton().tint(themes[self.theme.themeSettings].themeColor)
                    } //: TOOLBAR ITEM
#endif
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            self.showingSettingsView.toggle()
                        }) {
                            Label("Settings", systemImage: "paintbrush")
                                .imageScale(.large)
                        } //: ADD BUTTON
                        .tint(themes[self.theme.themeSettings].themeColor)
                        .sheet(isPresented: $showingSettingsView) {
                            SettingsView().environmentObject(self.iconSettings)
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
                            .fill(themes[self.theme.themeSettings].themeColor)
                            .opacity(self.animatingButton ? 0.2 : 0)
                            .scaleEffect(self.animatingButton ? 1 : 0.5)
                            .frame(width: 68, height: 68, alignment: .center)
                        Circle()
                            .fill(themes[self.theme.themeSettings].themeColor)
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
                    .tint(themes[self.theme.themeSettings].themeColor)
                    .onAppear(perform: {
                        self.animatingButton.toggle()
                    })
                } //: ZSTACK
                    .padding(.bottom, 15)
                    .padding(.trailing, 15)
                , alignment: .bottomTrailing
            ) //: OVERLAY
            
        } //: NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
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
    
    private func colorize(priority: String) -> Color {
        switch priority {
        case "High":
            return .pink
        case "Normal":
            return .green
        case "Low":
            return .blue
        default:
            return .gray
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
