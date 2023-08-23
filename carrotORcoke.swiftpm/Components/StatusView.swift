//
//  File.swift
//  
//
//  Created by alex on 2023/04/19.
//

import SwiftUI

struct StatusView: View {
    @State private var isShowingAlert = false
    @State private var isImageVisible = false
    
    var body: some View {
        HStack(spacing: 20) {
            Image("icon_Home")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isImageVisible = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                        isImageVisible = false
                    }
                }
            
//            stepBar()
//            historyBar()
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
            
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
        }
        .overlay(
            Group {
                if isImageVisible {
                    Image("chatBubble_Hi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .transition(.opacity)
                        .position(x:730, y:470)
                }
            }
        )
    }
}



struct StatusViewQuiz: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_1")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
            
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("홈으로 이동하시겠습니까?"),
                          primaryButton: .default(Text("확인"), action: {
                              // HomeView로 이동하는 코드
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("취소")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}


struct StatusViewQuiz2: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_2")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        
        
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("홈으로 이동하시겠습니까?"),
                          primaryButton: .default(Text("확인"), action: {
                              // HomeView
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("취소")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}


struct StatusViewQuiz3: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_3")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        
        
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("Go to Home?"),
                          primaryButton: .default(Text("Confirm"), action: {
                              // HomeView
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("Cancel")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}


struct StatusViewQuiz4: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_4")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        
        
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("홈으로 이동하시겠습니까?"),
                          primaryButton: .default(Text("확인"), action: {
                              // HomeView
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("취소")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}





struct StatusViewQuiz5: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_5")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        
        
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("홈으로 이동하시겠습니까?"),
                          primaryButton: .default(Text("확인"), action: {
                              // HomeView
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("취소")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}

struct StatusViewQuiz6: View {
    @State private var isShowingAlert = false
    @State private var showAlert = false
    @State var showNextPage = false
    var body: some View {
        
        
        HStack(spacing: 40) {
            Image("icon_Home")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    showAlert.toggle()
                }
            
            Image("progress_bar_6")
            
            
            Image("icon_exit_wh")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 96, height: 96)
                .padding()
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))

                }
            
            
        }
        
        
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("홈으로 이동하시겠습니까?"),
                          primaryButton: .default(Text("확인"), action: {
                              // HomeView
                        
                        showNextPage.toggle()
                             
                          }),
                          secondaryButton: .cancel(Text("취소")))
                }
        .fullScreenCover(isPresented: $showNextPage) {
            Home()

        }
        
    }}





struct StatusViewQuiz_Previews: PreviewProvider {
    static var previews: some View {
        StatusViewQuiz()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
