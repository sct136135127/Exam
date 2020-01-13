//
//  TableViewController.swift
//  HR
//
//  Created by JASON on 2019/12/23.
//  Copyright © 2019 JASON. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{

    static var list_info:[[Net_Info]] = [[],[],[],[]]
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       appDelegate.blockRotation = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        get_info()
        //tableView.register(TableViewCell.self, forCellReuseIdentifier: "TTableViewCell")
        
        tableView.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        
//        print(TableViewController.list_info[0].count)
//        print(TableViewController.list_info[1].count)
//        print(TableViewController.list_info[2].count)
//        print(TableViewController.list_info[3].count)
    }
    
    func get_info(){
        let request = NSURL(string:"http://hr.nju.edu.cn")
        if request == nil {
            print("wrong1")
        }
        let data = NSData(contentsOf: request! as URL)
        if data == nil {
            print("wrong2")
        }
        let htmlString = String(NSString.init(data: data! as Data, encoding: String.Encoding.utf8.rawValue) ?? "wrong")
        
        var info1:String?
        var info2:String?
        var info3:String?
        var info4:String?
        
        if htmlString != "wrong"{
            info1 = htmlString.components(separatedBy: "<div class=\"mod-h1-r")[1]
            info1 = info1!.components(separatedBy: "<div class=\"mod-h2")[0]
            info1 = info1!.components(separatedBy: "<ul class=\"news_list\">")[1]
            info1 = info1!.components(separatedBy: "</ul")[0]
            var tempinfolist = info1!.components(separatedBy: "</li>")
            
            for i in tempinfolist {
                if i.components(separatedBy: "<a href=\'").count == 1{
                    break
                }
                var url = i.components(separatedBy: "<a href=\'")[1]
                url = "http://hr.nju.edu.cn" + url.components(separatedBy: ".htm\'")[0] + ".htm"
                var title = i.components(separatedBy: "title=\'")[1]
                title = title.components(separatedBy: "\'>")[0]
                var time = i.components(separatedBy: "<span class=\"news_meta\">")[1]
                time = time.components(separatedBy: "</span")[0]
                var num = i.components(separatedBy: "<span class=\"news_meta1\">(")[1]
                num = num.components(separatedBy: ")</span")[0]
                
                TableViewController.list_info[0].append(Net_Info(name: title, time: time, url: url, hot_num: Int(num) ?? 0))
            }
            
            info2 = htmlString.components(separatedBy: "<div class=\"mod-h2-l")[1]
            info2 = info2!.components(separatedBy: "<div class=\"mod-h2-r")[0]
            info2 = info2!.components(separatedBy: "<ul class=\"news_list\">")[1]
            info2 = info2!.components(separatedBy: "</ul")[0]
            tempinfolist = info2!.components(separatedBy: "</li>")
            
            for i in tempinfolist {
                if i.components(separatedBy: "<a href=\'").count == 1{
                    break
                }
                var url = i.components(separatedBy: "<a href=\'")[1]
                url = "http://hr.nju.edu.cn" + url.components(separatedBy: ".htm\'")[0] + ".htm"
                var title = i.components(separatedBy: "title=\'")[1]
                title = title.components(separatedBy: "\'>")[0]
                var time = i.components(separatedBy: "<span class=\"news_meta\">")[1]
                time = time.components(separatedBy: "</span")[0]
                var num = i.components(separatedBy: "<span class=\"news_meta1\">(")[1]
                num = num.components(separatedBy: ")</span")[0]
                
                TableViewController.list_info[1].append(Net_Info(name: title, time: time, url: url, hot_num: Int(num) ?? 0))
            }
            
            info3 = htmlString.components(separatedBy: "<div class=\"mod-h2-r")[1]
            info3 = info3!.components(separatedBy: "<div class=\"mod-h3")[0]
            info3 = info3!.components(separatedBy: "<ul class=\"news_list\">")[1]
            info3 = info3!.components(separatedBy: "</ul")[0]
            tempinfolist = info3!.components(separatedBy: "</li>")
            
            
            for i in tempinfolist {
                if i.components(separatedBy: "<a href=\'").count == 1{
                    break
                }
                var url = i.components(separatedBy: "<a href=\'")[1]
                url = "http://hr.nju.edu.cn" + url.components(separatedBy: ".htm\'")[0] + ".htm"
                var title = i.components(separatedBy: "title=\'")[1]
                title = title.components(separatedBy: "\'>")[0]
                var time = i.components(separatedBy: "<span class=\"news_meta\">")[1]
                time = time.components(separatedBy: "</span")[0]
                var num = i.components(separatedBy: "<span class=\"news_meta1\">(")[1]
                num = num.components(separatedBy: ")</span")[0]
                
                TableViewController.list_info[2].append(Net_Info(name: title, time: time, url: url, hot_num: Int(num) ?? 0))
            }
            
            info4 = htmlString.components(separatedBy: "<div class=\"mod-h3-l")[1]
            info4 = info4!.components(separatedBy: "<div class=\"mod-h3-r")[0]
            info4 = info4!.components(separatedBy: "<ul class=\"news_list\">")[1]
            info4 = info4!.components(separatedBy: "</ul")[0]
            tempinfolist = info1!.components(separatedBy: "</li>")
            
            for i in tempinfolist {
                if i.components(separatedBy: "<a href=\'").count == 1{
                    break
                }
                var url = i.components(separatedBy: "<a href=\'")[1]
                url = "http://hr.nju.edu.cn" + url.components(separatedBy: ".htm\'")[0] + ".htm"
                var title = i.components(separatedBy: "title=\'")[1]
                title = title.components(separatedBy: "\'>")[0]
                var time = i.components(separatedBy: "<span class=\"news_meta\">")[1]
                time = time.components(separatedBy: "</span")[0]
                var num = i.components(separatedBy: "<span class=\"news_meta1\">(")[1]
                num = num.components(separatedBy: ")</span")[0]
                
                TableViewController.list_info[3].append(Net_Info(name: title, time: time, url: url, hot_num: Int(num) ?? 0))
            }
            
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TableViewController.list_info[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{

        if section == 0{
            return "人事通知"
        }else if section == 1{
            return "人事新闻"
        }else if section == 2{
            return "公示公告"
        }else {
            return "招聘信息"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "TTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let info = TableViewController.list_info[indexPath.section][indexPath.row]
        
        //MARK: 待补充
        if info.hot_num! >= 1000{
            cell.show_image.image = UIImage(named: "huo-2")
            cell.show_image.sizeToFit()
        }
        
        cell.ttt.text = info.name!
        cell.ttt.adjustsFontSizeToFitWidth=true
        
        cell.time.text = info.time
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {

        return 50

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 50

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        webViewController.net = TableViewController.list_info[indexPath.section][indexPath.row].url
        print(webViewController.net)
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0{
//
//        }else if indexPath.section == 1{
//            
//        }else if indexPath.section == 2{
//
//        }else if indexPath.section == 3 {
//
//        }
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
