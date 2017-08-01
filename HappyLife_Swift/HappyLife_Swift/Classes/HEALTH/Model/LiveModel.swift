//
//  LiveModel.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/8/1.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit
import SwiftyJSON
class LiveModel: NSObject {
    var room_src = String()
    var room_name = String()
    init(dic: JSON) {
        
        self.room_src = dic["room_src"].stringValue
        self.room_name = dic["room_name"].stringValue
    }
}
