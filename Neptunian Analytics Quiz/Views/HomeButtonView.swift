//
//  HomeButton.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 16/08/2024.
//

import SwiftUI

struct HomeButtonView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationLink(
            destination: WelcomeView(),
            label: {
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
            })
        }
    }

#Preview {
    HomeButtonView()
}
