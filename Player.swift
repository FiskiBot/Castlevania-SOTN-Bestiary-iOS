//
//  Player.swift
//  SplitView
//
//  Created by Patrick Moening on 7/13/16.
//  Copyright © 2016 Loser Extreme. All rights reserved.
//

import UIKit

struct Player {
    private var _image : UIImage! = UIImage()
    var image : UIImage {return _image}
    
    private var _name : String
    var name : String {return _name}
    
    private var _desc : String
    var desc : String {return _desc}
    
    private var _weakness : [String] = [""]
    var weakness : [String] {return _weakness}
    
    private var _absorbs : [String] = [""]
    var absorbs : [String] {return _absorbs}
    
    private var _locations : [String] = [""]
    var locations : [String] {return _locations}
    
    private var _drops : [String] = [""]
    var drops : [String] {return _drops}
    
    private var _HP : Int
    var HP : Int {return _HP}
    
    private var _level : Int
    var level : Int {return _level}
    
    private var _exp : Int
    var exp : Int {return _exp}
    
   
    init (image: UIImage!, name: String, desc: String, locations:[String], weakness: [String], absorbs: [String], drops:[String],  HP: Int, level: Int, exp: Int) {
        
        self._image = image
        self._name = name
        self._desc = desc
        self._locations = locations
        self._weakness = weakness
        self._absorbs = absorbs
        self._drops = drops
        self._HP = HP
        self._level = level
        self._exp = exp
    }
    
    static func makeEnemies() -> [Player]{
        
        let dracula = Player(image: UIImage(named: "dracula"), name: "Dracula", desc: "Destroyed by Richter in 1792. (5 years ago)", locations: ["Final Stage: Bloodlines"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 600, level: 0, exp:0)
        
        let bloodSkeleton = Player(image: UIImage(named: "bloodskeleton"), name: "Blood Skeleton", desc: "Revives due to blood soaked bones.", locations: ["Alchemy Laboratory", "Catacombs", "Floating Catacombs"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 9, level: 0, exp: 0)
        
        let bat = Player(image: UIImage(named:"bat"), name: "Bat", desc: "Vampire bats. Feared as servants of evil.", locations: ["Cave", "Entrance", "Floating Catacombs", "Royal Chapel", "Underground Caverns"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 1, level: 1, exp: 1)
        
        let stoneSkull = Player(image: UIImage(named: "stoneskull"), name: "Stone Skull", desc: "Indestructible spinning skull.", locations: ["Black Marble Gallery", "Reverse Colosseum", "Reverse Outer Wall"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 0, level: 1, exp: 1)
        
        let zombie = Player(image: UIImage(named: "zombie"), name: "Zombie", desc: "Fresh Corpses. Magically animated.", locations: ["Entrance"], weakness: ["Holy","Fire"], absorbs: ["None"], drops: ["$100","Cloth Tunic"], HP: 1, level: 1, exp: 5)
        
        let merman2 = Player(image: UIImage(named: "merman2"), name: "Merman (LVL.2)", desc: "Legendary creature. Attacks all invaders.", locations: ["Entrance"], weakness: ["Fire", "Thunder"], absorbs: ["Water"], drops: ["Zircon", "Monster Vial 1"], HP: 10, level: 2, exp: 12)
            
        let skeleton = Player(image: UIImage(named: "skeleton"), name: "Skeleton" , desc: "Magically animated skeleton.", locations: ["Alchemy Laboratory", "Floating Catacombs", "Marble Gallery", "Outer Wall"], weakness: ["Holy"], absorbs: ["None"], drops: ["Shield Potion","Monster Vial 3"], HP: 9, level: 2, exp: 10)
        
        let warg = Player(image: UIImage(named: "warg"), name: "Warg", desc: "Wolves which guard castle entrance.", locations: ["Entrance"], weakness: ["Fire"], absorbs: ["None"], drops: ["None"], HP: 21, level: 2, exp: 10)
        
        let boneScimitar = Player(image: UIImage(named: "bonescimitar"), name: "Bone Scimitar", desc: "Ferocious skeleton swordsman.", locations: ["Alchemy Laboratory", "Colosseum", "Entrance"], weakness: ["None"], absorbs: ["None"], drops: [ "Short Sword", "Red Rust"], HP: 18, level: 3, exp: 15)
        
        let merman3 = Player(image: UIImage(named: "merman3"), name: "Merman (LVL.3)", desc: "Fireball-spitting Merman. Largest of merman kind.", locations: ["Entrance"], weakness: ["Fire", "Thunder"], absorbs: ["Water"], drops: ["Zircon", "Monster Vial 1"], HP: 10, level: 3, exp: 12)
        
        let spittleBone = Player(image: UIImage(named: "spittlebone"), name: "Spittle Bone", desc: "4-legged skeleton. Drips poison.", locations: ["Alchemy Laboratory"], weakness: ["Holy"], absorbs: ["None"], drops: ["None"], HP: 16, level: 3, exp: 20)
        
        let axeKnight = Player(image: UIImage(named: "axearmor"), name: "Axe Knight", desc: "Low level axe knight.", locations: ["Alchemy Laboratory", "Marble Gallery"], weakness: ["Hit"], absorbs: ["None"], drops: ["Axe", "Bronze Cuirass"], HP: 32, level: 4, exp: 10)
        
        let bloodyZombie = Player(image: UIImage(named: "bloodyzombie"), name: "Bloody Zombie", desc: "Eastern Church soldiers dispatched 300 years ago.", locations: ["Marble Gallery"], weakness: ["Holy","Fire"], absorbs: ["None"], drops: ["Cloth Tunic", "Basilard"], HP: 24, level: 4, exp: 15)
        
        let slinger = Player(image: UIImage(named: "slinger"), name: "Slinger", desc: "Bone-hurling skeleton.", locations: ["Marble Gallery"], weakness: ["Holy"], absorbs: ["None"], drops: ["Leather Shield", "Knight Shield"], HP: 12, level: 4, exp: 10)
        
        let ouijaTable = Player(image: UIImage(named: "ouijatable"), name: "Ouija Table", desc: "Possessed Ouija table.", locations: ["Marble Gallery"], weakness: ["None"], absorbs: ["None"], drops: ["Barley Tea", "Morning Set"], HP: 20, level: 5, exp: 20)
        
        let skelerang = Player(image: UIImage(named: "skelerang"), name: "Skelerang", desc: "Boomerang wielding skeleton.", locations: ["Marble Gallery", "Olrox's Quarters", "Royal Chapel"], weakness: ["Holy"], absorbs: ["None"], drops: ["Boomerang", "Fire Boomerang"], HP: 18, level: 5, exp: 15)
        
        let thornweed = Player(image: UIImage(named: "thornweed"), name: "Thornweed", desc: "Plant with razor-sharp leaves.", locations: ["Abandoned Pit to the Catacomb", "Black Marble Gallery", "Catacombs", "Long Library", "Cave"], weakness: ["Fire"], absorbs: ["Hit"], drops: ["Grapes", "Strawberry"], HP: 12, level: 5, exp: 20)
        
        let gaibon = Player(image: UIImage(named: "gaibon"), name: "Gaibon", desc: "Fire-breathing flying demon.", locations: ["Alchemy Laboratory", "Cave", "Entrance"], weakness: ["None"], absorbs: ["None"], drops: ["Life Vessel"], HP: 200, level: 6, exp: 200)
        
        let ghost = Player(image: UIImage(named: "ghost"), name: "Ghost", desc: "Low level flaming ghosts.", locations: ["Marble Gallery"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["$400", "Antivenom"], HP: 11, level: 6, exp: 10)
        
        let marionette = Player(image: UIImage(named: "marionette"), name: "Marionette", desc: "Demonic puppet from Hell.", locations: ["Marble Gallery"], weakness: ["Fire"], absorbs: ["None"], drops: ["Smart Potion", "Circlet"], HP: 20, level: 6, exp: 30)
        
        
        return [dracula, bloodSkeleton, bat, stoneSkull, zombie, merman2, skeleton,warg, boneScimitar, merman3, spittleBone, axeKnight, bloodyZombie, slinger, ouijaTable, skelerang, thornweed, gaibon, ghost, marionette]
        
    }
    
}
