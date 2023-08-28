//
//  Test.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

struct Test: View {
    let placeholder: String
    @State private var showText: Bool = false
    @State var text: String
    var onCommit: (()->Void)?
    
    var body: some View {
        
        HStack {
            ZStack {
                SecureField(placeholder, text: $text, onCommit: {
                    onCommit?()
                })
                .opacity(showText ? 0 : 1)
                
                if showText {
                    HStack {
                        Text(text)
                            .lineLimit(1)
                        
                        Spacer()
                    }
                }
            }
            
            Button(action: {
                showText.toggle()    
            }, label: {
                Image(systemName: showText ? "eye.slash.fill" : "eye.fill")
            })
            .accentColor(.secondary)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 1)
                    .foregroundColor(.clear))
//        .frame(width: 350, height: 57)
    }
    
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
//        Group {
            Test(placeholder: "Any placeholder", text: "")
                .padding()
//                .previewLayout(.fixed(width: 400, height: 100))
            
            Test(placeholder: "Any placeholder", text: "")
                .padding()
                .preferredColorScheme(.dark)
//                .previewLayout(.fixed(width: 400, height: 100))
//        }
    }
}
