//
//  DashBoardView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 13/04/23.
//

import SwiftUI

struct DashBoardView: View {
    let videoID = "pkcJEvMcnEg"
    let progress: CGFloat = 0.6
    @State var routine: Routine2
    @StateObject var routineData = RoutineData()
    
    //    percent = CGFloat(calBurn/calTot*100)
    
    
    var body: some View {
        
        //        let percent: CGFloat = CGFloat(calBurn*100/calTot)
        
        
        VStack {
            DateView()
            
            ProgressBarView(width:321, height: 23, percent: CGFloat(routineData.percent), color1: Color.white, color2: Color.blue)
                .offset(y: -20)
            
            Text("\(routineData.calBurn)/\(routineData.calTot) kCal")
                .font(.caption2)
//                .offset(x: 120, y: -20)
                .position(x: 315, y: -20)
            
            VStack{
                VideoPlayer(videoID: videoID, progress: progress)
                    .frame(height: 241)
                    .offset(y: -80)
                //                                .position(x: 195, y: -50)
                
                
            }
            RoutineDataView(routine: routineData)
                .frame(height: 350)
                .offset(y: -80)
            
        }
    }
}

//struct AddCalories{
//
//    var calBurn: Int = 0
//    @State var routine: Routine2
//
//    mutating func addCal(){
//        if(routine.isChecked){
//            calBurn += routine.calories
//        }
//    }
//}

struct DashBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardView(routine: Routine2(video: "", workoutName: "", workoutDesc: "", rep: 0, calories: 0))
    }
}
