//
//  File.swift
//  
//
//  Created by alex on 2023/04/16.
//

import SwiftUI
struct answerBox: View {
    
    var body: some View {
        
        VStack {
//            Spacer()
            
            HStack {
                
                
                Image("iceBox_quiz")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 396, height: 251)
                    .padding(10)
//                Image("iceBox_quiz")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 396, height: 251)
//                    .padding(10)
//                Image("iceBox_quiz")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 396, height: 251)
//                    .padding(10)
//        
            }
//            .padding()
//            .padding()
//            .padding()
        }
        
        
    }
    
}




struct answerBox_Previews: PreviewProvider {
    static var previews: some View {
        answerBox()
                   .previewInterfaceOrientation(.landscapeLeft)
    }
}
