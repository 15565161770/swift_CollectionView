//
//  HeadChannelModel.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/8/1.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit
import SwiftyJSON
class HeadChannelModel: NSObject {
    var url = String()
    var name = String()
    
    init(dic: JSON) {
        
        self.url = dic["url"].stringValue
        self.name = dic["name"].stringValue
    }
}
