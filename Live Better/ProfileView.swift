//
//  ProfileView.swift
//  Live Better
//
//  Created by Lucas Nascimento on 23/11/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var name = UserDefaults.standard.string(forKey: "userName") ?? "No Name"
    @State private var age = UserDefaults.standard.string(forKey: "userAge") ?? "0"
    @State private var height = UserDefaults.standard.double(forKey: "userHeight")
    @State private var weight = UserDefaults.standard.double(forKey: "userWeight")

    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Your Profile")
                    .font(.headline)

                Text("Name: \(name)")
                Text("Age: \(age)")
                Text("Height: \(height, specifier: "%.1f") cm")
                Text("Weight: \(weight, specifier: "%.1f") kg")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)

            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
