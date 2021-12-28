//
//  ActionSheetViewModel.swift
//  TwitterClone
//
//  Created by Владимир on 28.12.2021.
//  Copyright © 2021 LEADGROUP. All rights reserved.
//

import Foundation

struct ActionSheetViewModel {
    
    private let user: User
    
    var options: [ActionSheetOptions] {
        var results = [ActionSheetOptions]()
        
        if user.isCurrentUser {
            results.append(.delete)
        } else {
            let followOption: ActionSheetOptions = user.isFollowed ? .unfollow(user) : .follow(user)
            results.append(followOption)
        }
        results.append(.report)
        
        return results
    }
    
    init(user: User) {
        self.user = user
    }
}

enum ActionSheetOptions {
    case follow(User)
    case unfollow(User)
    case report
    case delete
    
    var description: String {
        switch self {
        case .follow(let user):
            return "Follow @\(user.username)"
        case .unfollow(let user):
            return "Unfollow @\(user.username)"
        case .report:
            return "Report tweet"
        case .delete:
            return "Delete tweet"
        }
    }
}
