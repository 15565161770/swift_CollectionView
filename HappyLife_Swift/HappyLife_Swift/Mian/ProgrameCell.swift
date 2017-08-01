//
//  ProgrameCell.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/8/1.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit

class ProgrameCell: UICollectionViewCell {
    // 定义自定义cell控件
    var img = UIImageView()
    var name = UILabel()
    
    // model从控制器传过来
    func sendModel(model : ProgrameModel)  {
        img.sd_setImage(with: URL.init(string: model.game_icon!), placeholderImage: UIImage.init(named: "logo"))
        name.text = model.game_name!
    }
    
    // 初始化控件
    override init(frame: CGRect) {
        super.init(frame: frame)
        // 图片
        img = UIImageView.init(frame: .init(x: 0, y: 0, width: self.contentView.width, height: self.contentView.width))
        self.contentView.addSubview(img)
        // 名称
        name = UILabel.init(frame: .init(x: 0, y: img.bottom + 8, width: img.width, height: 21))
        // 文字居中显示
        name.textAlignment = .center
        name.font = UIFont.systemFont(ofSize: 14)
        self.contentView.addSubview(name)
        // 下面一条黄线
        let line = UIView.init(frame: .init(x: 0, y: name.bottom, width: img.width, height: 1))
        line.backgroundColor = UIColor.orange
        self.contentView.addSubview(line)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
