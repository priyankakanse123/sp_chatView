//
//  chatDetailController.swift
//  sp_chatView
//
//  Created by BridgeLabz on 25/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit
import MessageUI

class chatDetailController: UIViewController
{
       @IBOutlet weak var chatDetailImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    var chatUserNAme : (String)!
    var chatimage : UIImage!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //let chatrow = chatView()
        chatDetailImage.image = chatimage
        chatDetailImage.contentMode = .ScaleAspectFill
        name.text = chatUserNAme
        
        
        //print("chatName =", chatrow.rowName!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    //@IBOutlet weak var buttonPressed: UIButton!
    

    @IBAction func buttonPressed(sender: AnyObject) {
        
        let whatsappURL:NSURL? = NSURL(string: "http://stackoverflow.com/questions/12504294/programmatically-open-maps-app-in-ios-6")
        if (UIApplication.sharedApplication().canOpenURL(whatsappURL!)) {
            UIApplication.sharedApplication().openURL(whatsappURL!)
        }
        else
        {
           print("hello")
           
        }

        
        func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
            //... handle sms screen actions
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        func viewWillDisappear(animated: Bool) {
            self.navigationController?.navigationBarHidden = false
        }
        
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
