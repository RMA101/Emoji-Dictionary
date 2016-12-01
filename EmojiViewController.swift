//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Rhen Anderson on 11/29/16.
//  Copyright © 2016 Rhen Anderson. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "emojiDetailSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        detailVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😁"
        emoji1.yearCreated = 2000
        emoji1.category = "Smiley"
        emoji1.definition = "Laughing"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.yearCreated = 2001
        emoji2.category = "Smiley"
        emoji2.definition = "Coolio"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😱"
        emoji3.yearCreated = 2002
        emoji3.category = "Smiley"
        emoji3.definition = "Shocked"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💩"
        emoji4.yearCreated = 2003
        emoji4.category = "Smiley"
        emoji4.definition = "Gross"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😞"
        emoji5.yearCreated = 2004
        emoji5.category = "Smiley"
        emoji5.definition = "Sad"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😭"
        emoji6.yearCreated = 2005
        emoji6.category = "Smiley"
        emoji6.definition = "Crying"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}















