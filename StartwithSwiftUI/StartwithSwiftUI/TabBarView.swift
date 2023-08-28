//
//  TabBarView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 14/04/23.
//

import SwiftUI

struct Tab2BarView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            DashBoardView(routine: Routine2(video: "", workoutName: "", workoutDesc: "", rep: 0, calories: 0))
                        .tabItem {
                            Image(systemName: "figure.cooldown")
                                .foregroundColor(Color.orange)
                            
                        }
                        .tag(0)
                    
                    CalendarView()
                        .tabItem {
                            Image(systemName: "clock")
                            
                        }
                        .tag(1)
                    
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            
                        }
                        .tag(2)
                }
    }
}

struct Tab2BarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
