//
//  IntroView.swift
//  Live Better
//
//  Created by Lucas Nascimento on 23/11/24.
//

import SwiftUI

struct IntroView: View {
    @State private var isShowingHome = false

    var body: some View {
        if isShowingHome {
            UserInfoView() // Navigate to the home screen
        } else {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)

                Text("Live Better!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .opacity(1.0)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation {
                                isShowingHome = true
                            }
                        }
                    }
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
