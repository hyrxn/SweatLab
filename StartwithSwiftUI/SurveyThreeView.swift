//
//  SurveyThreeView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct SurveyThreeView: View {
    var body: some View {
        VStack{
            
            Button(action: {
                // Handle button action here
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                    Text("Back")
                        .foregroundColor(.blue)
                }//.offset(x:-165,y:-390)
            }
            Text("What's your goal?")
                .font(.body)
                .fontWeight(.medium)
                .padding(.bottom,31)
            HStack{
                Button(action: {
                            
                            }) {
                            Text("Maintain your body")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }                            .padding(.trailing,47)

                Button(action: {
                            
                            }) {
                            Text("Lose Weight")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }
            }.padding(.bottom,50);            HStack{
                Button(action: {
                            
                            }) {
                            Text("Increase Focus")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }                            .padding(.trailing,47)

                Button(action: {
                            
                            }) {
                            Text("Increase Endurance")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }
            }.padding(.bottom,50)
            Button(action: {
                // Action to perform when button is tapped
            }) {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .overlay(
                            Circle()
                                .stroke(Color("l"), lineWidth: 2)
                        )
                        .frame(width: 60, height: 60)
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color("l"))
                        .font(.system(size: 30, weight: .thin))
                }
            }

        }
    }
}

struct SurveyThreeView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyThreeView()
    }
}
