//
//  TabView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 11/04/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
                    YoutubePlayerView()
                        .tabItem {
                            Image(systemName: "figure.cooldown")
                                .foregroundColor(Color.orange)
                            
                        }
                        .tag(0)
                    
//                    CalendarView()
                        .tabItem {
                            Image(systemName: "clock")
                            
                        }
                        .tag(1)
                    
//                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            
                        }
                        .tag(2)
                }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
