//
//  ConversationViewModel.swift
//  TwitterClone
//
//  Created by Владимир on 19.01.2022.
//  Copyright © 2022 LEADGROUP. All rights reserved.
//

import Foundation

struct ConversationViewModel {
    private let conversation: Conversation
    
    var timestamp: String? {
        guard let date = conversation.message.timestamp else { return nil }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: date)
    }
    
    init(conversation: Conversation) {
        self.conversation = conversation
    }
}

