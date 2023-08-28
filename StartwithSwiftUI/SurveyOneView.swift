//
//  SurveyOneView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct SurveyOneView: View {
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""

    var body: some View {
        
        VStack {
//          BackButtonView().offset(x:-165,y: -230)
            Text("Personalize your Fitness")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .offset(y:-30)
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .offset(y:-25)
            DropdownView()
            HStack(spacing: 29) {
                TextField("Age", text: $text1)
                    .frame(width: 89, height: 54.37)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal, 5)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                        TextField("Height", text: $text2)
                            .frame(width: 89, height: 54.37)
                            .background(Color.white)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                            .padding(.horizontal, 5)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                        TextField("Weight", text: $text3)
                            .frame(width: 89, height: 54.37)
                            .background(Color.white)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                            .padding(.horizontal, 5)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                    }
                    .frame(width: 333.86, height: 54.37)
            
            Button(action: {
                // Action to perform when button is tapped
            }) {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .overlay(
                            Circle()
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        .frame(width: 60, height: 60)
                    Image(systemName: "arrow.right")
                        .foregroundColor(.blue)
                        .font(.system(size: 30, weight: .thin))
                }
            }.padding(.top,52)


        }
        
    }
}

struct SurveyOneView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyOneView()
    }
}
