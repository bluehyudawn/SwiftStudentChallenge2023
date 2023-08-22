//
//  File.swift
//  
//
//  Created by alex on 2023/04/16.
//

import SwiftUI
struct rewardBox: View {
    
    var body: some View {
            
            Image("iceBox")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 140, height: 140)
            .padding(10)

            
            
        }
        
    }



struct rewardBox_Previews: PreviewProvider {
    static var previews: some View {
        rewardBox()
                   .previewInterfaceOrientation(.landscapeLeft)
    }
}
