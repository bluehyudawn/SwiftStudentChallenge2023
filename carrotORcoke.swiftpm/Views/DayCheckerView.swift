//
//  File.swift
//  
//
//  Created by alex on 2023/04/18.
//

import SwiftUI
struct DayCheckerView: View {
    @State private var noonDate = Date()
    @State private var isSaved = false
    
    var body: some View {
        VStack {
            DatePicker("정오 시간", selection: $noonDate, displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)
            
            Spacer()
            
            Button(action: {
                let userDefault = UserDefaults.standard
                let key = "noon"
                let currentNation = "KR" // 현재 국가 코드, 예시로 KR을 사용
                
                // userdefault에 저장
                userDefault.set(noonDate, forKey: key + "_" + currentNation)
                isSaved = true
            }) {
                Text("저장하기")
            }
            .disabled(isSaved)
            
            Spacer()
        }
        .padding()
        .navigationTitle("정오 체크")
    }
}



//struct DayCheckerView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayCheckerView()
//                   .previewInterfaceOrientation(.landscapeLeft)
//    }
//}
