//
//  MessageField.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    var body: some View {
        HStack{
            CustomTextField(placeholder: Text("Enter your message"), text: $message)
            Button{
                print("Message Sent.")
                message = ""
            }label: {
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color("Peach"))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("customGray"))
        .clipShape(RoundedRectangle(cornerRadius: 50))
        .padding()
    }
}

#Preview {
    MessageField()
}

struct CustomTextField : View {
    //placeholder
    var placeholder: Text
    //pass variables from one to another view
    @Binding var text: String
    //
    var editingChanged: (Bool) -> () = { _ in }
    var commit : () -> () = {}
    var body: some View{
        ZStack(alignment: .leading){
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
