//
//  Card.swift
//  Concentration
//
//  Created by Константин Стародубцев on 15.07.2020.
//  Copyright © 2020 Константин Стародубцев. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
