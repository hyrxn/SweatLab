//
//  ContentView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 31/03/23.
//

import SwiftUI

//jangan pakai ContentView kalau bikin file karena terlalu generic
//command+n -> buat file -> ada banyak file yang bisa dibuat termasuk UI sama data model

struct ContentView: View {
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

    
    
//    @State var percent: CGFloat = 0
//
////    progress bar
//    var body: some View {
//        VStack {
//            Text("\(Int(percent))%")
//                .font(.system(size: 40, weight: .bold))
//
//            ProgressBarView(width:300, height: 40, percent: percent, color1: Color.white, color2: Color.blue)
//
//            Button(action: {percent = CGFloat.random(in: 0...100)}, label: {
//                Text("Generate random Number")
//            })
//        }
//        .padding()
//    }
}

struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//    
//    PreviewProvider {
        static var previews: some View {
            DashBoardView(routine: Routine2(video: "", workoutName: "", workoutDesc: "", rep: 0, calories: 0))
        }

    
}
