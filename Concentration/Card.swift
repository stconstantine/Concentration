//
//  Card.swift
//  Concentration
//
//  Created by Константин Стародубцев on 15.07.2020.
//  Copyright © 2020 Константин Стародубцев. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
//    var hash: Int {return identifier}

    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
