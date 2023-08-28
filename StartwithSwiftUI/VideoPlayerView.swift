//
//  VideoPlayerView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 06/04/23.
//

import SwiftUI
import WebKit

struct VideoPlayer: UIViewRepresentable {
    
    let videoID: String
    let progress: CGFloat
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=Jf5_PJCFs-g\(videoID)") else {
            return
        }
        let request = URLRequest(url: youtubeURL)
        uiView.load(request)
    }
}

struct ProgressBar2: View{
    @State private var downloadAmount = 0.0
       let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

       var body: some View {
           ProgressView("", value: downloadAmount, total: 100)
               .onReceive(timer) { _ in
                   if downloadAmount < 100 {
                       downloadAmount += 2
                   }
               }.frame(width: 200, height: 50)
               .progressViewStyle(.linear)
           
       }
}

struct ProgressBar: View {
    
    let progress: CGFloat
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                
                
                
                Capsule().frame(width:321, height:23).padding(.trailing, 100).opacity(0.3).padding(.leading, 18)
                    .foregroundColor(Color(red: 0.1803921568627451, green: 0.4627450980392157, blue: 1.0))
                
                Capsule().frame(width: min(geometry.size.width * self.progress, geometry.size.width), height:23).padding(.leading, 18)
                    .foregroundColor(Color(red: 0.3411764705882353, green: 0.5254901960784314, blue: 0.8745098039215686))
            }
            .padding([.leading, .trailing])
            .offset(y: -20)
        }
    }
    
}

struct DateView: View {
    @State private var date = Date()
    
    var body: some View{
        
        Text("\(date.formatted(date : .complete ,time: .omitted))".uppercased())
            .font(.subheadline)
            .fontWeight(.regular)
            .frame(width: 321, height: 10)
            .padding(.top, 30)
            .padding(.leading, 15)
            .offset(x: -80, y: -25)
    }
    
}

struct YoutubePlayerView: View {
    let videoID = "pkcJEvMcnEg"
    let progress: CGFloat = 0.6
    var percent: CGFloat = 40
    
    var body: some View {
        VStack {
            
            DateView()
            
            ProgressBarView(width:321, height: 23, percent: percent, color1: Color.white, color2: Color.blue)
            
            Text("250/500 kCal")
                .font(.caption2)
                .offset(x: 120, y: -90)
//                .position(x: 315, y: -90)
            
//            VStack{
//                VideoPlayer(videoID: videoID, progress: progress)
//                    .frame(height: 241)
//                    .offset(y: -75)
////                    .position(x: 195, y: -50)
//                //                .padding()
//                //                .offset(y:-400)
//            }
            
            
            RoutineDataView(routine: RoutineData())
                .frame(height: 350)
           
//            if(routine.isChecked == true){
//                
//            }
            
            
        }
    }
}

struct YoutubePlayerview_Previews: PreviewProvider {
    static var previews: some View {
        YoutubePlayerView()
    }
}
