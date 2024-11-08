//
//  ChatListViewModel.swift
//  iOS UnitTests
//
//  Created by MacBook on 08/11/24.
//

import Foundation


class ChatListViewModel{
    
    var chatType: MessageFilter
    
    init(chatType: MessageFilter) {
        self.chatType = chatType
    }
}


enum MessageFilter{
    case all
    case unread
    case starred
    case archived
    case spam
}
