//
//  DetailViewController.swift
//  Emoji Dictionary
//
//  Created by Rhen Anderson on 11/29/16.
//  Copyright © 2016 Rhen Anderson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var yearCreatedLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        yearCreatedLabel.text = "Year Created: \(emoji.yearCreated)"
        categoryLabel.text = "Category: \(emoji.category)"
        detailLabel.text = emoji.definition
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
