//
//  ProgrameModel.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/8/1.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit
import SwiftyJSON
class ProgrameModel: NSObject {
    var game_icon : String?
    var game_name : String?
    init(dic: JSON) {
        super.init()
        self.game_icon = dic["game_icon"].string
        self.game_name = dic["game_name"].string
    }
}
