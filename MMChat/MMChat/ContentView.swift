//
//  ContentView.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello!", "How are you doing?", "I am now creating a chat application with SwiftUI."]
    var body: some View {
        VStack {
            VStack {
                //title row
                TitleRow()
                //chats
                ScrollView{
                    ForEach(messageArray, id: \.self){ text in
                        MessageBubble(message: Message(id: "111", text: text, receivedState: false, timeStamp: .now))
                    }
                }.padding(.top,10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                
            }
            .background(Color("Peach"))
            MessageField()
        }
    }
}

#Preview {
    ContentView()
}
