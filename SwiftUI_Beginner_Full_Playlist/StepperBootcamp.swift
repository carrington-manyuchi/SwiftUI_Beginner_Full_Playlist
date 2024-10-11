//
//  StepperBootcamp.swift
//  SwiftUI_Beginner_Full_Playlist
//
//  Created by Manyuchi, Carrington C on 2024/10/10.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        ZStack {
            VStack {
                
                Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 50 + widthIncrement, height: 100)
                
                Stepper("Stepper Two") {
                    // Increment
                    incrementWIdth(amount: 100)
                } onDecrement: {
                    // onDecrement
                    incrementWIdth(amount: -100)
                }

            }
        }
        .padding(50)
    }
    
    func incrementWIdth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
