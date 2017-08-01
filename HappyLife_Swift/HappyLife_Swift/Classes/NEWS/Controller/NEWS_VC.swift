//
//  NEWS_VC.swift
//  HappyLife_Swift
//
//  Created by 仝兴伟 on 2017/7/31.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//  tableview需要自定义，里面会有轮播图和自定义cell 
//  tableview

// 定义宏
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

import UIKit

class NEWS_VC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var baby : [String] = ["宝宝0","宝宝1","宝宝2","宝宝3","宝宝4","宝宝5","宝宝6","宝宝7","宝宝8","宝宝9","宝宝10","宝宝11"]
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    tableView = UITableView(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 320, height: 560)), style: .plain)
     tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        }
    
    
    // mark -- tableview delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baby.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
            let initIdentifier = "Cell"
            let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: initIdentifier)
            cell.textLabel?.text = baby[indexPath.row]
            return cell
    }
     // tableview 点击方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

















































