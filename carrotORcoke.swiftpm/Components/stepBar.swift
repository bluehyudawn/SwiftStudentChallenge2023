//
//  File.swift
//
//
//  Created by alex on 2023/04/17.
//

import SwiftUI
struct stepBar: View {
  
    var body: some View {
        Button(action: {}) {
            HStack {
                Text("Math")
                    .padding(.leading, 32)
                    .foregroundColor(.white)
                    .font(.custom("Pretendard-Semibold", size: 28))
                Spacer()
                Text("Lv.1")
                    .padding(.trailing, 32)
                    .foregroundColor(.white)
                    .font(.custom("Pretendard-Semibold", size: 28))
            }
            .frame(width: 738, height: 88)
            .background(Color(red: 0.2941176471, green: 0.3411764706, blue: 0.2823529412))
            .cornerRadius(20)
        
    
                        }
                        
                        }
                        
                        }



struct stepBar_Previews: PreviewProvider {
    static var previews: some View {
        stepBar()
                   .previewInterfaceOrientation(.landscapeLeft)
    }
}
