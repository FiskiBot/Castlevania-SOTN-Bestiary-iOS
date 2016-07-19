//
//  Player.swift
//  SplitView
//
//  Created by Patrick Moening on 7/13/16.
//  Copyright © 2016 Loser Extreme. All rights reserved.
//

import UIKit

struct Player {
    private var _name : String = ""
    var name : String {
        return _name
    }
    private var _desc : String = ""
    var desc : String {
        return _desc
    }
    private var _locations : [String] = [""]
    var locations : [String] {
        return _locations
    }
    private var _image : UIImage! = UIImage()
    var image : UIImage {
        return _image
    }
    private var _textColor1 : UIColor! = UIColor()
    var textColor1 : UIColor {
        return _textColor1
    }
    private var _textColor2 : UIColor! = UIColor()
    var textColor2 : UIColor {
        return _textColor2
    }
    
    private var _backgroundColor : UIColor! = UIColor()
    var backgroundColor : UIColor {
        return _backgroundColor
    }
    
   
    init (name: String, desc: String, locations:[String], image: UIImage!, textColor1: UIColor!, textColor2: UIColor!) {
        
        self._name = name
        self._desc = desc
        self._locations = locations
        self._image = image
        self._textColor1 = textColor1
        self._textColor2 = textColor2
    }
    
    static func makeEnemies() -> [Player]{
        
        let dracula = Player(name: "Dracula", desc: "Destroyed by Richter in 1792. (5 years ago)", locations: ["Final Stage: Bloodlines"], image: UIImage(named: "1"), textColor1: UIColor.blackColor(), textColor2: UIColor.redColor())
        
        let skeleton = Player(name: "Blood Skeleton", desc: "Revives due to blood soaked bones.", locations: ["Alchemy Laboratory", "Catacombs", "Floating Catacombs"], image: UIImage(named: "2"), textColor1: UIColor.blackColor(), textColor2: UIColor.redColor())
        
        let bat = Player(name: "Bat", desc: "Vampire bats. Feared as servants of evil.", locations: ["Cave", "Entrance", "Floating Catacombs", "Royal Chapel", "Underground Caverns"], image: UIImage(named: "3"), textColor1: UIColor.blackColor(), textColor2: UIColor.redColor())
        
        let skull = Player(name: "Stone Skull", desc: "Indestructible spinning skull.", locations: ["Black Marble Gallery", "Reverse Colosseum", "Reverse Outer Wall"], image: UIImage(named: "4"), textColor1: UIColor.blackColor(), textColor2: UIColor.redColor())
        
        let zombie = Player(name: "Zombie", desc: "Fresh Corpses. Magically animated", locations: ["Entrance"], image: UIImage(named: "5"), textColor1: UIColor.blackColor(), textColor2: UIColor.redColor())
        
        
        return [dracula, skeleton, bat, skull, zombie]
        
    }
    
}
