//
//  MainController.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/7/31.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//  自定义tablebar

import UIKit

class MainController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewController(NEWS_VC(), title: "推荐",imageName:"btn_home_normal" ,selectImageName: "btn_home_selected")
        addChildViewController(COMIC_VC(), title: "栏目",imageName:"btn_column_normal", selectImageName: "btn_column_selected")
        addChildViewController(HEALTH_VC(), title: "直播",imageName:"btn_live_normal", selectImageName: "btn_live_selected")
        addChildViewController(MUSIC_VC(), title: "我的",imageName:"btn_user_normal", selectImageName: "btn_user_selected")
        
    }

    fileprivate func addChildViewController(_ childVC: UIViewController, title: String, imageName: String, selectImageName:String) {
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectImageName)
        let childNaVC = NavigationController(rootViewController: childVC)
        addChildViewController(childNaVC)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}






















