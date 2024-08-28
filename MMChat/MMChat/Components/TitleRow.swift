//
//  TitleRow.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var name = "Jennifer"
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading){
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption).foregroundStyle(.gray)
            }.frame(maxWidth: .infinity,alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundStyle(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
            
        }
        .padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
