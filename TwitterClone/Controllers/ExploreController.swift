//
//  ExploreController.swift
//  TwitterClone
//
//  Created by Владимир on 09.12.2021.
//  Copyright © 2021 LEADGROUP. All rights reserved.
//

import UIKit

class ExploreController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }

}
