//
//  CardView.swift
//  3 lab Concentration
//
//  Created by Nikita Hrabovskyi on 24.10.2023.
//

import UIKit



class CardView: NibLoadingView
{
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var button: UIButton!
    
    var card:Card!
    
    @IBAction func rotate(_ sender: UIButton) 
    {
        if topView.isHidden 
        {
            bottomImageView.flip(to: topView, with: .transitionFlipFromLeft)
        }
        else {
            topView.flip(to: bottomImageView, with: .transitionFlipFromRight)
        }
    }
    
    func configure (card:Card) {
        self.card = card
        bottomImageView.image = UIImage(named: card.cardValue)
        
    }
}


extension UIView {
    func flip(to view: UIView, with option: AnimationOptions) {
        UIView.transition(from: self, to: view, duration: 0.5, options: [option, .showHideTransitionViews])
    }
}


