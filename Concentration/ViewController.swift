//
//  ViewController.swift
//  Concentration
//
//  Created by Macbook Pro on 23/04/18.
//  Copyright © 2018 tofiqueahmedkhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Variable & Constant & Array
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flip Count : \(flipCount)"
        }
    }
    var emojiArray = ["👻","🎃","👻","🎃"]
    //MARK: - IBOutlets
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButton: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK: - IBActions
    @IBAction func touchButton(_ sender: UIButton) {
        if let buttonNumber = cardButton.index(of: sender){
        flipCard(withEmoji: emojiArray[buttonNumber], on: sender)
        flipCount += 1
        }
    }
    //MARK: - Custom Funtion
    func flipCard(withEmoji emoji : String, on button : UIButton){
        if button.currentTitle == emoji{
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1)
            button.setTitle("", for: UIControlState.normal)
        }else{
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.setTitle(emoji, for: UIControlState.normal)
        }
    }

}

