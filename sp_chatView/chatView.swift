
//
//  chatView.swift
//  sp_chatView
//
//  Created by BridgeLabz on 25/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class chatView: UIViewController , UITableViewDataSource , UITableViewDelegate {
    var rowImage : UIImage!
    var rowName : String!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : ChatCell = tableView.dequeueReusableCellWithIdentifier("chatCell") as! ChatCell!
        
        //code for chatName
        cell.chatName.text = "Meena"
        cell.chatName.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        
        cell.chatMessage.text = "Good Morning"
       
        // code for chatImage
        
        //cell.imageView?.image = UIImage(named: "default.png.jpeg")
       
        cell.chatImage.layer.borderWidth = 1.0
        cell.chatImage.layer.masksToBounds = false
        cell.chatImage.layer.borderColor = UIColor.whiteColor().CGColor
        cell.chatImage.layer.cornerRadius = cell.chatImage.frame.size.width/2
        cell.chatImage.clipsToBounds = true
        cell.chatImage.image = UIImage(named: "default.png.jpeg")
        return cell
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let cell : ChatCell = tableView.dequeueReusableCellWithIdentifier("chatCell") as! ChatCell!
//        rowImage = UIImage(named: "default.png.jpeg")
//        rowName = "Meena"
//        print("rowname ",rowName)
//    }
    
    @IBOutlet weak var tableView: UITableView!
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showChatDetails"{
            if let destination = segue.destinationViewController as? chatDetailController {
                if let blogIndex = tableView.indexPathForSelectedRow?.row {
                    destination.chatUserNAme = "Meena"
                    destination.chatimage = UIImage(named: "default.png.jpeg")
                }
            }
        }
    }

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    /Users/bridgelabz/Documents/sp_chatView/sp_chatView/chatView.swift:11:7: Class 'chatView' has no initializers
    */

}
