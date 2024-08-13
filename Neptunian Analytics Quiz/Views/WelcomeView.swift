//
//  WelcomeView.swift
//  Neptunian Analytics Quiz
//
//  Created by Keren Afriyie on 12/08/2024.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                GameColour.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                        })
                } .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
