//
//  File.swift
//  
//
//  Created by alex on 2023/04/19.
//

import SwiftUI

struct historyBar: View {
    
    
    var body: some View {
        Button(action: {}) {
            
            HStack(spacing: 10) {
                Image("icon_Crown")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 44, height: 44)
                
                Text("Your History")
                    .font(.system(size: 28))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 24)
            .background(Color(red: 0.5882352941, green: 0.3843137255, blue: 0.3098039216))
            .cornerRadius(20)
        }
        
    }
}
struct historyBar_Previews: PreviewProvider {
    static var previews: some View {
        historyBar()
    }
}
