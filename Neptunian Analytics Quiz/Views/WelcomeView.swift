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
                    VStack{
                        VStack(alignment: .leading, spacing: 0){
                            Text("NEPTUNIAN ANALYTICS")
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding()
                                .padding(.top, 100)
                                .frame(maxWidth: .infinity)
                            
                            Text("PROGRAMMING QUIZ")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity)
                            
                            Text("Select the correct answers to the following questions.")
                                .font(.title3)
                                .bold()
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                        Divider()
                        .frame(height: 2)
                        .background(Color.black)
                        .padding()
                        
                        Spacer()
                        NavigationLink(
                            destination: GameView(),
                            label: {
                                BottomTextView(str: "PLAY!")
                            })
                        Spacer()
                    }
                } .foregroundColor(.black)

            }
        }
    }
}

#Preview {
    WelcomeView()
}
