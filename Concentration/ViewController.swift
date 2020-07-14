//
//  ViewController.swift
//  Concentration
//
//  Created by Константин Стародубцев on 14.07.2020.
//  Copyright © 2020 Константин Стародубцев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmodji: "👻", on: sender)
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmodji: "🎃", on: sender)
    }
    
    func flipCard(withEmodji emoji: String, on button: UIButton) {
        print ("flipCard(withEmodji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .systemOrange
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = .systemBackground
        }
    }
}

