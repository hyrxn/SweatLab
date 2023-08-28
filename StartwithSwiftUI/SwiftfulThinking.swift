//
//  SwiftfulThinking.swift
//  StartwithSwiftUI
//
//  Created by Tania Cresentia on 07/04/23.
//

import SwiftUI

struct SwiftfulThinking: View {
    var body: some View {
        //system icons
        
        // the name of icons can be get from the SF Symbols (downloaded)
        //multicolor icons -> the one that can be changed is the blue colored part of the icons
//        Image(systemName: "heart.fill")
//            .renderingMode(.original)//for the multicolor icons to have their dedicated color as per original
//            .resizable() // to make sure the icon is according to the frame width
//            .aspectRatio(contentMode: .fit) // can be fit or fill
//            .font(.caption) // change the size of icon
//            .font(.system(size: 200)) // change manually
//            .foregroundColor(Color(.red))// we cannot use gradient here
//            .frame(width: 300, height: 300)
//            .clipped() // to cut icons based on the frame
            
        
        //IMAGES
        Image("therock")
        
    }
}

struct SwiftfulThinking_Previews: PreviewProvider {
    static var previews: some View {
        SwiftfulThinking()
    }
}
