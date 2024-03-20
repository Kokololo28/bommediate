//
//  ViewController.swift
//  3 lab Concentration
//
//  Created by Nikita Hrabovskyi on 10.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var CardViews: [CardView]!
    var cards: [Card] = [
        Card(cardValue: "image1"), Card(cardValue: "image1"),
        Card(cardValue: "image2"), Card(cardValue: "image2"),
        Card(cardValue: "image3"), Card(cardValue: "image3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for item in CardViews.enumerated() {
            let view = item.element
            view.configure(card: cards[item.offset])
        }
        // Do any additional setup after loading the view.
    }
    
    
}



