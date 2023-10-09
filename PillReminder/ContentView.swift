//
//  ContentView.swift
//  PillReminder
//
//  Created by Motoki Okayasu on 2023/10/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("grandma")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height:300)
                .padding()
                .offset(y: -100)
          Text("おくすりマインダー")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .offset(y: -75)
            Rectangle()
                .frame(width:250,height:100)
                .foregroundColor(Color.mint)
                .cornerRadius(100)
                .overlay(
            Button(action: {
                //タップされた時のアクション
            })
            {
                Text("START")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
