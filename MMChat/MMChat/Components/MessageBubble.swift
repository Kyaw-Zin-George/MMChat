//
//  MessageBubble.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
       
        VStack(alignment: message.receivedState ? .leading : .trailing){
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.receivedState ? Color("customGray") : Color("Peach"))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            .frame(maxWidth: 300, alignment:  message.receivedState ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                    .padding(message.receivedState ? .leading : .trailing, 25)
            }
            
        }
        .frame(maxWidth: .infinity, alignment:  message.receivedState ? .leading : .trailing)
        .padding(message.receivedState ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "111", text: "I am trying to get a job", receivedState: true, timeStamp: .now))
}
