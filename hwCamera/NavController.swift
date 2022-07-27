//
//  navController.swift
//  hwCamera
//
//  Created by azik on 27.07.22.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = ViewController()
        self.viewControllers = [vc]
    }
    

}
