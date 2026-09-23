//
//  InitAndEnumsView.swift
//  learning
//
//  Created by Saravanan V on 13/09/26.
//

import SwiftUI

struct InitAndEnumsView: View {
    let backGroundColor : Color
    init(day : Day) {
        switch day {
        case .Monday:
            self.backGroundColor = .red
        case .Tuesday:
            self.backGroundColor = .blue
        case .Wednesday:
            self.backGroundColor = .green
        case .Thursday:
            self.backGroundColor = .yellow
        case .Friday:
            self.backGroundColor = .purple
        case .Saturday:
            self.backGroundColor = .orange
        case .Sunday:
            self.backGroundColor = .pink
        }
    }
    enum Day {
        case Monday
        case Tuesday
        case Wednesday
        case Thursday
        case Friday
        case Saturday
        case Sunday
    }
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(backGroundColor)
            .frame(width: 250, height: 275)
            .overlay(alignment: .center) {
                VStack(spacing: 10) {
                    Text("20")
                        .font(.system(size: 70))
                    Text("Days")
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.bold)
            }
    }
}

#Preview {
    InitAndEnumsView(day: .Saturday)
}
