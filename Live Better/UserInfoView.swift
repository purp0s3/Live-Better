//
//  UserInfoView.swift
//  Live Better
//
//  Created by Lucas Nascimento on 23/11/24.
//

import SwiftUI

struct UserInfoView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var height = 160.0 // Default: 1.50m in cm
    @State private var weight = 50.0  // Default: 40 kg
    @State private var isShowingHome = false
    
    var body: some View {
        if isShowingHome {
            UserInfoView() // Navigate to the home screen
        }
        else {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Enter Your Details")
                        .font(.headline)
                    
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Stepper("Height: \(height, specifier: "%.1f") cm", value: $height, in: 50...250, step: 0.5)
                    
                    Stepper("Weight: \(weight, specifier: "%.1f") kg", value: $weight, in: 20...200, step: 0.5)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                
                Button(action: {
                    // Save data to UserDefaults
                    UserDefaults.standard.set(name, forKey: "userName")
                    UserDefaults.standard.set(age, forKey: "userAge")
                    UserDefaults.standard.set(height, forKey: "userHeight")
                    UserDefaults.standard.set(weight, forKey: "userWeight")
                }) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            .padding()
            .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
