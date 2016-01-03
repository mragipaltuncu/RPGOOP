//
//  Character.swift
//  RPG-OOP-Game
//
//  Created by Mehmet Ragıp Altuncu on 31/12/15.
//  Copyright © 2015 MehmetAltuncu. All rights reserved.
//

import Foundation


class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            }else {
                return true
            }
        }
    }
    
    init(startingHp:Int,attackPower:Int) {
        self._hp = startingHp
        self._attackPower = attackPower
        
    }
    
    func takeAttack (attackPower:Int) -> Bool {
        self._hp -= attackPower
        return true
        
    }
}