//
//  ProgressBarView.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 12/04/23.
//

import SwiftUI

struct ProgressBarView: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 70
    var color1 = Color(.white)
    var color2 = Color(.blue)
    
    var body: some View {
        let multiplier = width / 100
        
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor((Color.black.opacity(0.1)))

            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width:percent * multiplier, height: height)
                .background(color2.clipShape(RoundedRectangle(cornerRadius: height, style: .continuous)))
                .foregroundColor(.clear)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
