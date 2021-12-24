//
//  TweetViewModel.swift
//  TwitterClone
//
//  Created by Владимир on 21.12.2021.
//  Copyright © 2021 LEADGROUP. All rights reserved.
//

import Foundation
import UIKit

struct TweetViewModel {
    
    let tweet: Tweet
    let user: User
    
    var profileImageUrl : URL? {
        return user.profileImageUrl
    }
    
    var timestamp: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        let now = Date()
        return formatter.string(from: tweet.timestamp, to: now) ?? "2m"
    }
    
    var userInfoText: NSAttributedString {
        let title = NSMutableAttributedString(string: user.fullname,
                                       attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        
        title.append(NSAttributedString(string: " @\(user.username)",
                                        attributes: [.font: UIFont.systemFont(ofSize: 14),
                                                        .foregroundColor: UIColor.lightGray]))
        
        title.append(NSAttributedString(string: " ・ \(timestamp)",
                                        attributes: [.font: UIFont.systemFont(ofSize: 14),
                                                        .foregroundColor: UIColor.lightGray]))
        
        return title
    }
    
    init(tweet: Tweet) {
        self.tweet = tweet
        self.user = tweet.user
    }
}