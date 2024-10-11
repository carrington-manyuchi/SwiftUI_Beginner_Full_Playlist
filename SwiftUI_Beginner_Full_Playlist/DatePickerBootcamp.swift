//
//  DatePickerBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Selected date is:")
                Text(dateFormatter.string(from: selectDate))
                    .font(.title)
                //DatePicker("Select a date", selection: $selectDate)
                //    .tint(.red)
                   // .datePickerStyle(.graphical)
                    //.datePickerStyle(.compact)
                // .datePickerStyle(.wheel)
              //  DatePicker("Date", selection: $selectDate, displayedComponents: .date)
                DatePicker("Date", selection: $selectDate, in: startingDate...endingDate, displayedComponents: .date)
            }
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
