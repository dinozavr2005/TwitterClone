//
//  MessageViewModel.swift
//  TwitterClone
//
//  Created by Владимир on 19.01.2022.
//  Copyright © 2022 LEADGROUP. All rights reserved.
//

import UIKit

struct MessageViewModel {
    
    private let message: Message
    
    var messageBackgroundColor: UIColor {
        return message.isFromCurrentUser ? .twitterBlue : #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    var messageTextColor: UIColor {
        return message.isFromCurrentUser ? .white : .black
    }
    
    var rightAnchorActive: Bool {
        return message.isFromCurrentUser
    }
    
    var leftAnchorActive: Bool {
        return !message.isFromCurrentUser
    }
    
    var shouldHideProfileImage: Bool {
        return message.isFromCurrentUser
    }
    
    init(message: Message) {
        self.message = message
    }
}
