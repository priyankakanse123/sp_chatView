//
//  ChatCell.swift
//  sp_chatView
//
//  Created by BridgeLabz on 25/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet weak var chatImage: UIImageView!
    
    @IBOutlet weak var chatName: UILabel!
    
    @IBOutlet weak var chatMessage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
