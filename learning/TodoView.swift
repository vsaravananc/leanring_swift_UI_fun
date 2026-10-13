//
//  TodoView.swift
//  learning
//
//  Created by Saravanan V on 13/10/26.
//

import SwiftUI


struct TodoModel : Identifiable {
    var id: UUID = UUID()
    var text: String
    var isDone: Bool = false
}

class TodoController : ObservableObject {
    
    @Published var todos: [TodoModel] = []
    
    func addTodo(todo: String) {
        self.todos.append(TodoModel(text: todo))
    }
}


struct TodoView: View {
    @State var showAddTodo: Bool = false
    @State var todo: String = ""
    @StateObject var todoController : TodoController = TodoController()
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach($todoController.todos) { $todo in
                    Toggle(isOn: $todo.isDone) {
                        Text(todo.text)
                            .font(.title)
                    }.toggleStyle(customToggleView())
                }.padding(.horizontal)
            }
            .navigationTitle(Text("Todo"))
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    HStack{
                        Spacer()
                        
                        Button {
                            showAddTodo = true
                        } label: {
                            Image(systemName: "plus")
                                .font(.title)
                                .padding(10)
                                .background(Circle().fill(Color.blue))
                                .foregroundStyle(.white)
                        }.sheet(isPresented: $showAddTodo) {
                            ScrollView{
                                VStack(spacing: 16){
                                    Text("Add Todo")
                                        .font(.title)
                                        
                                    TextField(text: $todo) {
                                        Text("Enter Todo")
                                    }
                                    .onSubmit {
                                        if !todo.isEmpty {
                                            todoController.addTodo(todo: todo)
                                            todo = ""
                                            showAddTodo = false
                                        }
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(.gray.opacity(0.1))
                                    )
                                }
                            }
                            .padding(12)
                            .presentationDetents(
                                    [.medium],
                                    selection: .constant(.medium)
                                 )
                        }
                        
                    }.padding(.horizontal,8)
                }
            }
        }
    }
}



#Preview {
    TodoView()
}
