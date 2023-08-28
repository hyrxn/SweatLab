//
//  RoutineData.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct Routine2: Identifiable, Hashable{
    let id = UUID()
    var video: String
    var workoutName: String
    var workoutDesc: String
    var rep: Int
    var calories: Int
    var isChecked = false
    
    mutating func updateIsChecked() {
        isChecked.toggle()
    }
}

class RoutineData: ObservableObject{
    @Published var routine: [Routine2] = [
        Routine2(video: "https://www.youtube.com/watch?v=otzWCWpuW-A&pp=ygUQYm9keXdlaWdodCBzcXVhdA%3D%3D", workoutName: "Bodyweight Squats", workoutDesc: "Legs (quadriceps, hamstrings, glutes)", rep: 2, calories: 50),
        
        Routine2(video: "youtube thumbnail", workoutName: "Push-Ups", workoutDesc: "Chest, shoulders, triceps, core", rep: 5, calories: 100),
        
        Routine2(video: "youtube thumbnail", workoutName: "Mountain Climbers", workoutDesc: "Core, shoulders, legs", rep: 2, calories: 50),
        
        Routine2(video: "youtube thumbnail", workoutName: "Burpees", workoutDesc: "Full body workout (legs, chest, shoulders, core)", rep: 5, calories: 100),
        
        Routine2(video: "youtube thumbnail", workoutName: "Jumping Lunges", workoutDesc: "Legs (quadriceps, hamstrings, glutes), cardiovascular system", rep: 3, calories: 90),
        
        Routine2(video: "youtube thumbnail", workoutName: "Plank", workoutDesc: "Core (abs, obliques), shoulders, back", rep: 4, calories: 50),
        
        Routine2(video: "youtube thumbnail", workoutName: "Bicycle Crunches", workoutDesc: "Abs, obliques, hip flexors", rep: 2, calories: 30),
        
        Routine2(video: "youtube thumbnail", workoutName: "Superman", workoutDesc: "Lower back, glutes, shoulders", rep: 2, calories: 80),
        
        Routine2(video: "youtube thumbnail", workoutName: "Tricep Dips", workoutDesc: "Triceps, shoulders, core", rep: 2, calories: 100),

        Routine2(video: "youtube thumbnail", workoutName: "Side Plank", workoutDesc: "Obliques, core, shoulders", rep: 2, calories: 100)
    ]
    
    
    @Published var calBurn: Int = 0
    @Published var calTot: Int = 750
    @Published var percent: Float = 0.0
    @Published var flag : Bool = false
    
    func countCalories() {
        var result = 0
        for rout in routine {
            if rout.isChecked{
//                if !rout.flag  {
                    result += rout.calories
//                    updateFlag()
//                }
            }
        }
        calBurn = result
        percent = Float(CGFloat(calBurn*100/calTot))
    }
}

struct RoutineDataView: View {
    @StateObject var routine: RoutineData
    var body: some View {
//        Text("hi")
        

        ScrollView{
            ForEach(Array(routine.routine)){ routine in
                
                CardView(viewModel: self.routine, routine: self.$routine.routine[self.routine.routine.firstIndex(of: routine)!])
                
                Divider().frame(width: 300)
            }
        }
    }
}

struct RoutineDataView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineDataView(routine: RoutineData())
    }
}
