//
//  RecommendModel.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/8/1.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit
import SwiftyJSON
class RecommendModel: NSObject {
    var pic_url : String?
    
    init(dic : JSON) {
        
        super.init()
        
        self.pic_url = dic["pic_url"].string
    }

}
