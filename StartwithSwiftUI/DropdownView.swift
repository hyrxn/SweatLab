//
//  DropdownView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

struct DropdownView: View {
    let genders = ["Date of Birth", "Male", "Female"]
    @State private var selectedGender = "Select your gender"
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 333.86, height: 54.37)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                HStack(spacing: 20) {
                    Spacer()
                    Text(selectedGender)
                        .foregroundColor(selectedGender == "Select your gender" ? .gray : .black)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                        .padding(.leading, 4)
                    Spacer()
                }
                .padding(.horizontal, 16)
                .onTapGesture {
                    isExpanded.toggle()
                }
            }
            if isExpanded {
                Picker("", selection: $selectedGender) {
                    ForEach(genders, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .frame(width: 333.86, height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .offset(y: 4.37) // adjust the offset as needed to align the menu with the rectangle
            }
        }
        .animation(.spring())
    }
}



struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView()
    }
}
