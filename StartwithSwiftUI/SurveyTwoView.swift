//
//  SurveyTwoView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct SurveyTwoView: View {
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
                }.offset(x:-165,y:-150)
            }
            Text("How many days in a week can you allocate working out?")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom,47)
            HStack{
                Button(action: {
                            
                            }) {
                            Text("0 times")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }                            .padding(.trailing,47)

                Button(action: {
                            
                            }) {
                            Text("1-2 times")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                            }
            }.padding(.bottom,50)
            
            HStack{
                Button(action: {
                            
                            }) {
                            Text("3-5 times")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                        }
                            .padding(.trailing,47)
                Button(action: {
                            
                            }) {
                            Text(">5 times")
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .background(Color("l"))
                                .clipShape(Circle())
                        }
                
            }.padding(.bottom,47)
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

struct SurveyTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyTwoView()
    }
}
