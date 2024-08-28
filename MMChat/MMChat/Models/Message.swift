//
//  Message.swift
//  MMChat
//
//  Created by Kyaw Thant Zin(George) on 8/27/24.
//

import Foundation

struct Message: Identifiable, Codable{
    var id: String
    var text: String
    var receivedState: Bool
    var timeStamp: Date
}
