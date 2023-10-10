//
//  ContentView.swift
//  PillReminder
//
//  Created by Motoki Okayasu on 2023/10/09.
//

import SwiftUI


struct ContentView: View {
    @State private var showTabBar = false
    
    var body: some View {
        if showTabBar {
            TabBarView()
        } else {
            VStack {
                Image("grandma")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:300, height:300)
                    .padding()
                    .offset(y: -100)
                Text("おくすりマインダー")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .offset(y: -75)
                Rectangle()
                    .frame(width:250,height:100)
                    .foregroundColor(Color.mint)
                    .cornerRadius(100)
                    .offset(y: -30)
                    .overlay(
                        Button(action: {
                            //タップされた時のアクション
                            showTabBar = true
                        })
                        {
                            Text("START")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .offset(y: -30)
                            
                        }
                    )
            }
        }
    }
    
    
    
    struct TabBarView: View {
        var body: some View {
            TabView {
               Text("タブ１")
                .tabItem(){
                    Image(systemName: "1.circle")
                    Text("HOME")
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
