//
//  PickerLView.swift
//  learning
//
//  Created by Saravanan V on 02/10/26.
//

import SwiftUI

struct PickerLView: View {
    
    @State private var selectedItem: String? = nil
    @State private var numberOfPeople: Int? = nil
    @State private var checkAmount: Double = 200.0
    
    var body: some View {
        
//        Picker("Picker", systemImage: "heart.fill", selection: $selectedItem) {
//            
//            Text("Apple").tag("Apple")
//            Text("Banana").tag("Banana")
//            Text("Orange").tag("Orange")
//            Text("Mango").tag("Mango")
//            Text("Pineapple").tag("Pineapple")
//            Text("Guava").tag("Guava")
//            Text("Strawberry").tag("Strawberry")
//            Text("Blueberry").tag("Blueberry")
//            Text("Blackberry").tag("Blackberry")
//            Text("Cherry").tag("Cherry")
//            Text("Kiwi").tag("Kiwi")
//            Text("Lemon").tag("Lemon")
//            Text("Peach").tag("Peach")
//            Text("Plum").tag("Plum")
//            Text("Raspberry").tag("Raspberry")
//            Text("Watermelon").tag("Watermelon")
//            
//        }.tint(.red)
        
        Section {
            TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .keyboardType(.decimalPad)

            Picker("Number of people", selection: $numberOfPeople) {
                ForEach(2..<100) {
                    Text("\($0) people").tag($0)
                }
            }
        }
        
        
    }
}

#Preview {
    PickerLView()
}

/**
 
 Text("Apple").tag("Apple")
 Text("Banana").tag("Banana")
 Text("Orange").tag("Orange")
 Text("Mango").tag("Mango")
 Text("Pineapple").tag("Pineapple")
 Text("Guava").tag("Guava")
 Text("Strawberry").tag("Strawberry")
 Text("Blueberry").tag("Blueberry")
 Text("Blackberry").tag("Blackberry")
 Text("Cherry").tag("Cherry")
 Text("Kiwi").tag("Kiwi")
 Text("Lemon").tag("Lemon")
 Text("Peach").tag("Peach")
 Text("Plum").tag("Plum")
 Text("Raspberry").tag("Raspberry")
 Text("Watermelon").tag("Watermelon")
 
 */
