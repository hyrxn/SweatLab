//
//  StartwithSwiftUIApp.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

@main
struct StartwithSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            DashBoardView(routine: Routine2(video: "", workoutName: "", workoutDesc: "", rep: 0, calories: 0))
            
        }
    }
}
