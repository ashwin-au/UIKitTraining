//
//  TabBarController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 25/05/23.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Student List"
    }
}
