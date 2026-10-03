//
//  DatePickerLView.swift
//  learning
//
//  Created by Saravanan V on 02/10/26.
//

import SwiftUI

struct DatePickerLView: View {
    
    @State private var date: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year:-18)) ?? Date()
    let endingDate: Date = Date()
    
    var body: some View {
        VStack {
            
//            DatePicker("DatePicker", selection: $date)
//            DatePicker("Date Picker", selection: $date, displayedComponents: [.hourAndMinute])
            DatePicker("Date Picker", selection: $date, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(.compact)
                .tint(.pink)
                .padding(.horizontal)
        }
    }
}

#Preview {
    DatePickerLView()
}
