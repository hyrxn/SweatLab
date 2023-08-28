//
//  RegisterPage.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

struct RegisterPage: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repassword: String = ""
    @State private var dob: String = ""
    @State private var isSecure = true
    @State private var birthDate = Date.now
    
    var body: some View {
        
        
        
        VStack{
            
            Text("Register")
                .font(.largeTitle)
                .fontWeight(.bold)
                .offset(x:-100)//AAAAAAAAAA
                .padding(.bottom, 42)
            
            DropdownView()
            
  
            TextField("Name", text: self.$name)
                .frame(height: 57)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 25)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .frame(width: 350, height: 57)
                .padding([.horizontal], 25)
                .padding(.bottom, 17)
                
            
            Test(placeholder: "Password", text: "")
                .frame(width: 350, height:57)
                .padding([.horizontal], 25)
                .padding([.vertical], 17)
            
            Test(placeholder: "Re password", text: "")
                .frame(width: 350, height:57)
                .padding([.horizontal], 25)
                .padding([.vertical], 17)
            
            TextField("Email", text: self.$email)
                .frame(height: 57)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 25)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .frame(width: 350, height: 57)
                .padding([.horizontal], 25)
                .padding([.vertical], 17)
            
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date){
                
            }.padding(.trailing, 130)
            
            
            
//            Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")
            
            TextField("Date of Birth", text: self.$dob)
                .frame(height: 57)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 25)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .frame(width: 350, height: 57)
                .padding([.horizontal], 25)
                .padding([.vertical], 17)
            
            Button(action: {
                // Add login logic here
            }, label: {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 57)
                    .background(Color.blue)
                    .cornerRadius(5.0)
                    .padding(.top,10)
            }
            )
            
        }
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}

