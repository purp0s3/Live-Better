//
//  ExerciseView.swift
//  Live Better
//
//  Created by Lucas Nascimento on 23/11/24.
//

import SwiftUI

struct ExerciseView: View {
    let exercises = ["Push-ups", "Squats", "Yoga", "Plank"]

    var body: some View {    
        NavigationView {
            List(exercises, id: \.self) { exercise in
                Text(exercise)
            }
            .navigationTitle("Exercises")
        }
    }
}
