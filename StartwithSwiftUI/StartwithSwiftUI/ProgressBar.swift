//
//  ProgressBar.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 03/04/23.
//

import SwiftUI

struct ProgressBar1: View {
    var progress: Int
    
    var body: some View {
        let lightGrey = Color(.white)
        let angle = Angle(degrees: Double(progress)*360/5)
        return ZStack{
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(lightGrey)
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)
            Circle()
                .trim(from: 0.0, to: CGFloat(angle.degrees/360.0))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.green)
                .rotationEffect(Angle(degrees: -90.0))
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar1(progress: 4)
            .frame(width: 200, height: 200)
    }
}
