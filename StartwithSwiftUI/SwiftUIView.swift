//
//  SwiftUIView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 06/04/23.
//

import SwiftUI

struct Routine: Identifiable, Hashable{
    let id = UUID()
    var video: String
    var workoutName: String
    var workoutDesc: String
    var rep: Int
    var calories: Int
    var isChecked = false
}

//array of Routines
class RoutineViewModel: ObservableObject{
    @Published var routineList: Set<Routine> = []
    
    func addRoutine(_ routine: Routine){
        routineList.insert(routine)
    }
    
    //wait wait, function within the class accessing the same class??
    func routineData(){
        @ObservedObject var viewModel = RoutineViewModel()
        
        let bodyweightSquat = Routine(video: "youtube thumbnail", workoutName: "Bodyweight Squats", workoutDesc: "Legs (quadriceps, hamstrings, glutes)", rep: 2, calories: 50)
        viewModel.addRoutine(bodyweightSquat)
        
        let pushUps = Routine(video: "youtube thumbnail", workoutName: "Push-Ups", workoutDesc: "Chest, shoulders, triceps, core", rep: 5, calories: 100)
        viewModel.addRoutine(pushUps)
        
    }
}

//add routine


struct CardView: View {
//    @ObservedObject var viewModel = RoutineViewModel()
    
    @ObservedObject var viewModel: RoutineData
    @Binding var routine: Routine2
    
    var body: some View {
        
        //        VStack{
        //            Button("Add Routine"){
        //                let routine1 = Routine(video: "youtube thumbnail", workoutName: "Bodyweight Squats", workoutDesc: "Legs (quadriceps, hamstrings, glutes)", rep: 2, calories: 50)
        //                viewModel.addRoutine(routine1)
        //            }
        //            ForEach(Array(viewModel.routineList), id: \.self){ routine in
        //                Text("\(routine.workoutName)")
        //            }
        //        }
        
        
        
        HStack {
            Image(uiImage: UIImage(contentsOfFile: "https://www.youtube.com/watch?v=otzWCWpuW-A&pp=ygUQYm9keXdlaWdodCBzcXVhdA%3D%3D") ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 61)
                .background(Color.gray)
                .cornerRadius(10)
                .onTapGesture {
                    
                }
            
            VStack(alignment: .leading) {
                Text("\(routine.workoutName)")
                    .font(.headline)
                    .foregroundColor(.black)
                Text("\(routine.workoutDesc)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                //                        ZStack{
                HStack{
                    Text("\(routine.rep) Rep")
                        .font(.caption2)
                        .frame(width:63, height: 19)
                        .background(Color(red: 0.6980392156862745, green: 0.8627450980392157, blue: 0.34901960784313724))
                        .cornerRadius(10)
                    
                    Text("\(routine.calories) Calories")
                        .font(.caption2)
                        .frame(width: 90, height: 19)
                        .background(Color(red: 0.6980392156862745, green: 0.8627450980392157, blue: 0.34901960784313724))
                        .cornerRadius(10)
                    
                    Button(action: {
                        routine.isChecked.toggle()
                        viewModel.countCalories()
                    }) {
                        Image(systemName: routine.isChecked ? "checkmark.circle.fill" : "checkmark.circle")
                            .resizable().frame(width: 18, height: 18)
                            .foregroundColor(routine.isChecked ? .green : .black)
                            .padding(.leading,8)
                    }
                    
                }
                //                        }
            }
            
            Spacer()
            
            //                    CheckBox(isChecked: false)
        }
        .padding(.horizontal, 48)
        .background(Color.white)
        .cornerRadius(10)
        .frame(height: 97)
        //                .shadow(radius: 5)
    }
}
struct CheckBox: View {
    @State var isChecked: Bool
    
    var body: some View {
        Button(action: {
            self.isChecked.toggle()
            
        }) {
            Image(systemName: isChecked ? "checkmark.circle.fill" : "checkmark.circle")
                .resizable().frame(width: 18, height: 18)
                .foregroundColor(isChecked ? .green : .black)
                .padding(.leading,8)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(viewModel: RoutineData(),
                 routine: .constant(Routine2(
            video: "youtube-thumbnail",
            workoutName: "Routine 1",
            workoutDesc: "Workout title",
            rep: 1,
            calories: 100))
        )
    }
}
