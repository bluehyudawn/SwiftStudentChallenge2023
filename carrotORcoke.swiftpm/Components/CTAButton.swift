//
//  Button.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/16.
//


import SwiftUI

struct CTAButton: View {
    var text: String = "Text here"
    var color: Array<Color> = [Color(#colorLiteral(red: 0.4196078431, green: 0.4156862745, blue: 1, alpha: 1))]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
             
                    .font(.custom("Pretendard-Semibold", size: 28))
                    .bold()
                
            }
            .frame(width: 186, height: 80, alignment: .center)
            .background(color.first)
            .cornerRadius(24)
            .foregroundColor(.white)
            
        }
        
        
    }
}

struct CTAButton_Previews: PreviewProvider {
    static var previews: some View {
        CTAButton()
    }
}
