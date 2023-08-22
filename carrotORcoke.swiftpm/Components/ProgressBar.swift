////
////  progressBar.swift
////  carrotORcoke
////
////  Created by alex on 2023/04/16.
////
//
import SwiftUI
struct ProgressBar: View {
    @Binding var progress: Double
    
    var gradient: Array<Color> = [Color(#colorLiteral(red: 1, green: 0.3803921569, blue: 0.1725490196, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.7254901961, blue: 0.262745098, alpha: 1))]
    
    var body: some View {
        ZStack(alignment: .leading) {
        
            
            RoundedRectangle(cornerRadius: 60)
            //change form here
                .frame(width: 670, height: 24)
//                .opacity(0.3)
                .foregroundColor(Color(red: 0.631372549, green: 0.3333333333, blue: 0.3333333333))
                .overlay(
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(Color(red: 0.7725490196, green: 0.4509803922, blue: 0.4509803922), lineWidth: 6))
                
                    
                
            RoundedRectangle(cornerRadius: 60)
            //change form here 
                .frame(width: CGFloat(progress) * 670, height: 20)
                .foregroundColor(Color.clear)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                .cornerRadius(60)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 0.2)) {
                    progress = progress
                }
            }
        }
    }
}


struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: .constant(0))
    }
}

