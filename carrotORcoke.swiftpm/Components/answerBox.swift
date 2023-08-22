//
//  File.swift
//  
//
//  Created by alex on 2023/04/16.
//

import SwiftUI
struct answerBox: View {
    
    var body: some View {
        
        HStack {
            
            Image("iceBox_quiz")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 396, height: 251)
                .padding(10)
    
        }
        
        
    }
    
}




struct answerBox_Previews: PreviewProvider {
    static var previews: some View {
        answerBox()
                   .previewInterfaceOrientation(.landscapeLeft)
    }
}
