//
//  Net_Info.swift
//  HR
//
//  Created by JASON on 2019/12/23.
//  Copyright © 2019 JASON. All rights reserved.
//

import UIKit

struct Net_Info{
    
    var name:String?
    
    //MARK: 时间
    var time:String?
    
    var url:String?
    
    var hot_num:Int?
    
    init(name:String,time:String,url:String,hot_num:Int)
    {
        self.name = name
        self.time = time
        self.url = url
        self.hot_num = hot_num
    }
}
