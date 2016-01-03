//
//  ViewController.swift
//  RPG-OOP-Game
//
//  Created by Mehmet Ragıp Altuncu on 31/12/15.
//  Copyright © 2015 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orcHpLabel: UILabel!
    @IBOutlet weak var soldierHpLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    var soldier: Soldier!
    var orc: Orc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        soldier = Soldier(hp:150, attackPower:10, name:"Armut")
        orc = Orc(hp: 150, attackPower: 10, name: "Grunt")
        orcHpLabel.text = "\(orc.hp) HP"
        soldierHpLabel.text = "\(soldier.hp) HP"
        
    }

    func hideOpponent(sender: UIButton) {
        
        sender.hidden = true
    
    }

    @IBAction func orcAttackButton(sender: AnyObject) {
       
        soldier.takeAttack(orc.attackPower)
        soldierHpLabel.text! = "\(soldier.hp) HP"
        messageLabel.text = "Orc attacked Soldier for \(orc.attackPower)"
        
        if !soldier.isAlive {
            messageLabel.text = "Orc has killed the Soldier"
        }
    }

    

    @IBAction func soldierAttackButton(sender: AnyObject) {
        
        orc.takeAttack(soldier.attackPower)
        orcHpLabel.text! = "\(orc.hp) HP"
        messageLabel.text = "Soldier attacked Soldier for \(soldier.attackPower)"
        
        if !orc.isAlive {
            messageLabel.text = "Soldier has killed the Orc"
        }

    }
    
    func orcAttack() {
        
    }


}

