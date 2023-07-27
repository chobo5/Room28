//
//  ViewController.swift
//  Room28
//
//  Created by 원준연 on 2023/06/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class MainTabBarVC: UITabBarController {
    deinit {
        print("MainTabBarVC deinit")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.label
    }
}

class NetworkCheckingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

