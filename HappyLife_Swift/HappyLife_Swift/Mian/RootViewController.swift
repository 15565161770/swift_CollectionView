//
//  RootViewController.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/7/31.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        UIView.animate(withDuration: 0.35, animations: {
            self.tabBarController?.tabBar.transform = CGAffineTransform.identity
        })
    }


}
