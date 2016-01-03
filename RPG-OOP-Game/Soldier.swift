//
//  Soldier.swift
//  RPG-OOP-Game
//
//  Created by Mehmet Ragıp Altuncu on 31/12/15.
//  Copyright © 2015 MehmetAltuncu. All rights reserved.
//

import Foundation


class Soldier: Character {
    
    private var _name : String = "Soldier"
    private var _weapon : [String] = ["Sword","Axe"]
    
    var weapon : [String] {
        return _weapon
    }
    
    var name: String {
        return _name
    }
    
    convenience init(hp:Int,attackPower:Int,name:String) {
        self.init(startingHp:hp,attackPower:attackPower)
        _name = name
    }
    
}