//
//  PlaterView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct PlaterView: View {
    @State var count = 0
    @State var limit = 0
    var body: some View {
        VStack {
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
            
            VStack {
                Text("Your Daily Move Goal")
                    .font(.title2)
                    .fontWeight(.regular)
                Text("Set how active you want to be")
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    Button(action: {
                        if self.count > 0 {
                            self.count -= 10
                        }
                    }) {
                        Image(systemName: "minus")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    Text("\(count)")
                        .font(.largeTitle)
                        
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                        .frame(minWidth: 50)
                    
                    Button(action: { self.count += 10 }) {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    
                    .padding()
                }
                Text("Cal / Day")
            }
            
            VStack {
                Text("Your Calorie Limit")
                    .font(.title2)
                    .fontWeight(.regular)
                Text("This denotes the extra amount of calories you’re willing to burn each day")
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    Button(action: {
                        if self.limit > 0 {
                            self.limit -= 10
                        }
                    }) {
                        Image(systemName: "minus")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    Text("\(limit)")
                        .font(.title)
                        
                        .fontWeight(.bold)
                        .foregroundColor(Color("lred"))
                        .frame(minWidth: 50)
                    
                    Button(action: { self.limit += 10 }) {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                }
                Text("Cal / Day")
            }.offset(y:100)
            
            Button(action: {
                // action to perform when the button is tapped
            }) {
                Text("Finish")
                    .frame(width: 300, height: 57)
                    .foregroundColor(.white)
                    .background(Color("l"))
                    .cornerRadius(10)
            }.offset(y:150)


        }
    }
}


struct PlaterView_Previews: PreviewProvider {
    static var previews: some View {
        PlaterView()
    }
}
