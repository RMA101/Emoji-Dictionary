//
//  DetailViewController.swift
//  Emoji Dictionary
//
//  Created by Rhen Anderson on 11/29/16.
//  Copyright © 2016 Rhen Anderson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = "no emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😁" {
            detailLabel.text = "Laughing head"
        }
        if emoji == "😎" {
            detailLabel.text = "Cool dude"
        }
        if emoji == "😱" {
            detailLabel.text = "Shocked"
        }
        if emoji == "💩" {
            detailLabel.text = "Gross"
        }
        if emoji == "😞" {
            detailLabel.text = "Disappointed"
        }
        if emoji == "😭" {
            detailLabel.text = "Crying"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
