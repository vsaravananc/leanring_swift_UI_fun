//
//  ListAndSectionView.swift
//  learning
//
//  Created by Saravanan V on 28/09/26.
//

import SwiftUI

struct ListAndSectionView: View {
    
   @State var items:[String] = ["Apple","Banana","Orange","Mango"]
    
     func deleteItem(at: IndexSet){
        items.remove(atOffsets: at)
     }
    
    func moveItem(fromOffsets: IndexSet, toOffset: Int){
        items.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
    
    func addItem(){
        items.append("Cocunut")
    }
    
    var body: some View {
        NavigationView{
            List{
                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }.onDelete(perform: deleteItem)
                     .onMove(perform: moveItem)
                     .listRowBackground(Color.blue)
                     .foregroundStyle(.white)
                     .fontWeight(.bold)
                     .font(.largeTitle)
                } header: {
                    HStack{
                        Text("Header".lowercased())
                        Image(systemName: "flame.fill")
                          
                    }  .foregroundStyle(.red)
                }
            }
            .listStyle(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        addItem()
                    } label: {
                        Text("Add")
                    }
                }
            }
            .navigationTitle(Text("List and Section"))
            .tint(.red)
        }
    }
    
    
}

#Preview {
    ListAndSectionView()
}
