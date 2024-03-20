//
//  Card.swift
//  3 lab Concentration
//
//  Created by Nikita Hrabovskyi on 14.11.2023.
//

import Foundation

class Card
{
    var cardValue: String
    var isHidden: Bool = true
    
    init(cardValue: String) {
        self.cardValue = cardValue
    }
}
