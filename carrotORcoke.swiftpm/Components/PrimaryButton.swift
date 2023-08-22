//
//  Button.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/16.
//


import SwiftUI

struct PrimaryButton: View {
    var text: String = "Text here"
    var gradient: Array<Color> = [Color(#colorLiteral(red: 1, green: 0.3803921569, blue: 0.1725490196, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.7254901961, blue: 0.262745098, alpha: 1))]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                
                    .font(.custom("Pretendard-Semibold", size: 28))
                    .bold()
                
                    .padding(32)
            }
            .frame(height: 80, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
            .cornerRadius(60)
            .foregroundColor(.white)
            
        }
        
        
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
