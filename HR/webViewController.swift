//
//  webViewController.swift
//  HR
//
//  Created by JASON on 2019/12/23.
//  Copyright © 2019 JASON. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController,UIWebViewDelegate{
    @IBOutlet weak var web: WKWebView!
    static var net:String?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       appDelegate.blockRotation = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if webViewController.net != nil{
            let myURL = URL(string: webViewController.net!)
            let myRequest = URLRequest(url: myURL!)
            web.load(myRequest)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
