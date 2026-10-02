//
//  ToggoleLView.swift
//  learning
//
//  Created by Saravanan V on 02/10/26.
//

import SwiftUI

struct customToggleView : ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        Button {
                         configuration.isOn.toggle()
                     } label: {
                         HStack (spacing: 20){
                             Image(systemName: configuration.isOn
                                     ? "checkmark.circle.fill"
                                   : "circle").resizable()
                                 .frame(width: 20, height: 20)
                             VStack(alignment:.leading) {
                                 configuration.label
                             }
                         }
                     }
                     .tint(.primary)
                     .buttonStyle(.borderless)
    }
}

struct ToggoleLView: View {
    
    @State private var isOn = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
                Text("Vibrate on Ring")
                .fontWeight(.medium)
                Text("Enable vibration when the phone rings")
                .foregroundStyle(.secondary)
        }.toggleStyle(customToggleView())
            .tint(Color.blue)
            .padding(.horizontal)
    }
}

#Preview {
    ToggoleLView()
}
