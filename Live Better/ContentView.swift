//
//  ContentView.swift
//  Live Better
//
//  Created by Lucas Nascimento on 23/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }

            ExerciseView()
                .tabItem {
                    Label("Exercise", systemImage: "figure.walk")
                }

            RunView()
                .tabItem {
                    Label("Run", systemImage: "map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
