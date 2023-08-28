//
//  CalculatorView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

//navigation view
//variable menggunakan lebih banyak memory dibandingkan constant, variable datanya bisa diubah tetapi constant tidak
//struct -> structure

struct CalculatorView: View {
    @State private var indexPage = 0
    @State private var weightValue = 50.0
    @State private var heightValue = 50.0
    
    var body: some View {
        NavigationView {
            VStack{
                //tab control
                Picker("What is your favorite color?", selection: $indexPage){
                    Text("Calculator").tag(0)
                    Text("History").tag(1)
                    Text("Ferris").tag(2)
                }
                .pickerStyle(.segmented)
                
                //slider weight/Users/taniacresentia/Desktop/SwiftUI/StartwithSwiftUI/StartwithSwiftUI/CalculatorView.swift
                HStack{
                    Text("Weight (kg)")
                        .font(.body).foregroundColor(.gray)
                    Spacer()
                    Text("63").font(.title2).bold()
                }
                .padding(.top)
                Slider(
                    value:$weightValue,
                    in: 0...100
                )
                
                Divider()
                
                //slider Height
                HStack{
                    Text("Height (m)")
                        .font(.body).foregroundColor(.gray)
                    Spacer()
                    Text("63").font(.title2).bold()
                }
                .padding(.top)
                Slider(
                    value:$heightValue,
                    in: 0...100
                )
                
                Divider()
                Spacer()
            }
            .navigationTitle("Body Mass Index")
        }
    }

}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
