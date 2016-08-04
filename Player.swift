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
        
        let slogra = Player(image: UIImage(named: "slogra"), name: "Slogra", desc: "Demon with enchanted spear.", locations: [	"Alchemy Laboratory", "Cave", "Entrance"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 200, level: 6, exp: 200)
        
        let diplocephalus = Player(image: UIImage(named: "diplocephalus"), name: "Diplocephalus", desc: "Nauseating two-headed beast. Which is the head?", locations: ["Marble Gallery"], weakness: ["None"], absorbs: ["None"], drops: ["Pentagram, Tart"], HP: 11, level: 7, exp: 17)
        
        let fleaman = Player(image: UIImage(named: "fleaman"), name: "Flea Man", desc: "Strange human-like creature. Jumps like a flea. (...)", locations: ["Marble Gallery", "Long Library"], weakness: ["None"], absorbs: ["None"], drops: ["Takemitsu", "Cheese"], HP: 11, level: 7, exp: 17)
        
        let medusa = Player(image: UIImage(named: "medusahead2"), name: "Medusa Head [LVL.7]", desc: "From Medusa's hair.", locations: ["Black Marble Gallery", "Clock Tower", "Death Wing's Lair", "Outer Wall"], weakness: ["None"], absorbs: ["Stone"], drops: ["Resist Stone", "Medusa Shield"], HP: 12, level: 7, exp: 20)
        
        let bladeSoldier = Player(image: UIImage(named: "bladesoldier"), name: "Blade Soldier", desc: "Novice of twin-bladed combat", locations: ["Colosseum"], weakness: ["None"], absorbs: ["None"], drops: ["$400", "Namakura"], HP: 16, level: 8, exp: 20)
        
        let boneMusket = Player(image: UIImage(named: "bonemusket"), name: "Bone Musket", desc: "Skeletons equipped with rifles.", locations: ["Colosseum", "Outer Wall"], weakness: ["Holy"], absorbs: ["None"], drops: ["Magic Missile", "Talisman"], HP: 24, level: 8, exp: 20)
        
        let medusa2 = Player(image: UIImage(named: "medusahead3"), name: "Medusa Head [LVL.8]", desc: "From Medusa's hair. Can petrify.", locations: ["Black Marble Gallery", "Clock Tower", "Death Wing's Lair", "Reverse Clock Tower", "Outer Wall"], weakness: ["None"], absorbs: ["Stone"], drops: ["Resist Stone"], HP: 12, level: 8, exp: 30)
        
        let plateLord = Player(image: UIImage(named: "platelord"), name: "Plate Lord", desc: "Heavily armored knight with iron ball.", locations: ["Colosseum", "Marble Gallery"], weakness: ["None"], absorbs: ["None"], drops: ["Iron Ball", "Neutron Bomb"], HP: 90, level: 8, exp: 90)
        
        let stoneRose = Player(image: UIImage(named: "stonerose"), name: "Stone Rose", desc: "Mutated plant. Seeds petrify.", locations: ["Marble Gallery"], weakness: ["Cut"], absorbs: ["Water (resist)", "Dark (absorb)"], drops: ["Leather Shield", "Meal Ticket"], HP: 60, level: 8, exp: 60)
        
        let axeKnight2 = Player(image: UIImage(named: "axearmor2"), name: "Axe Knight [LVL. 9]", desc: "Well armored axe knight.", locations: ["Castle Keep", "Colosseum", "Outer Wall"], weakness: ["None"], absorbs: ["None"], drops: ["Axe", "AxeLord Shield"], HP: 42, level: 9, exp: 50)
        
        let ctulhu = Player(image: UIImage(named: "ctulhu"), name: "Ctulhu", desc: "Fire and ice demon. Seems reluctant to fight.", locations: ["Death Wing's Lair", "Marble Gallery", "Necromancy Laboratory"], weakness: ["Holy"], absorbs: ["None"], drops: ["Dark"], HP: 200, level: 9, exp: 100)
        
        let boneArcher = Player(image: UIImage(named: "bonearcher"), name: "Bone Archer", desc: "Skeleton archer equipped with bow.", locations: ["Outer Wall", "Underground Caverns"], weakness: ["None"], absorbs: ["None"], drops: ["$400", "Magic Missile"], HP: 10, level: 10, exp: 50)
        
        let bonePillar = Player(image: UIImage(named: "bonepillar"), name: "Bone Pillar", desc: "Pillar built from bleached skull of dragon.", locations: ["Royal Chapel"], weakness: ["Holy"], absorbs: ["None"], drops: ["Antivenom", "Ballroom Mask", "Spiked Ball: Iron Ball", "Axe Lord Armor"], HP: 64, level: 10, exp: 30)
        
        let doppleganger10 = Player(image: UIImage(named: "dopplenganger"), name: "Doppleganger [LVL. 10]", desc: "Shape-shifting demon.", locations: ["Outer Wall"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 120, level: 10, exp: 500)
        
        let owl = Player(image: UIImage(named: "owl"), name: "Owl", desc: "Local barnyard owl. Mutated by castle's influence.", locations: ["Colosseum", "Entrance"], weakness: ["Fire"], absorbs: ["None"], drops: ["None"], HP: 26, level: 10, exp: 30)
        
        let phantomSkull = Player(image: UIImage(named: "phantomskull"), name: "Phantom Skull", desc: "Executed soldier's head. Hunting for vengeance.", locations: ["Clock Tower"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["Felt Hat", "Resist Dark"], HP: 15, level: 10, exp: 30)
        
        let scyllaWrym = Player(image: UIImage(named: "scylla"), name: "Scylla Wrym", desc: "Snake living off Scylla.", locations: ["Underground Caverns"], weakness: ["Thunder"], absorbs: ["Water"], drops: ["None"], HP: 130, level: 10, exp: 100)
        
        let skeletonApe = Player(image: UIImage(named: "skeletonape"), name: "Skeleton Ape", desc: "Animated ape skeleton. Hurls wooden barrels.", locations: ["Outer Wall", "Underground Caverns"], weakness: ["Holy"], absorbs: ["None"], drops: ["Banana", "TNT"], HP: 10, level: 10, exp: 30)
        
        let spearGuard = Player(image: UIImage(named: "spearguard"), name: "Spear Guard", desc: "Armored warrior with naginata.", locations: ["Outer Wall", "Underground Caverns"], weakness: ["Holy"], absorbs: ["None"], drops: ["Javelin", "Iron Cuirass"], HP: 20, level: 10, exp: 70)
        
        let spellBook = Player(image: UIImage(named: "spellbook"), name: "Spell Book", desc: "Book of beginner's spells.", locations: ["Long Library"], weakness: ["Fire"], absorbs: ["Hit"], drops: ["$1,000", "Pentagram"], HP: 26, level: 10, exp: 30)
        
        let wingedGuard = Player(image: UIImage(named: "wingedguard"), name: "Winged Guard", desc: "Slow-flying skeleton warrior.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["None"], drops: ["Iron Shield", "Javelin"], HP: 15, level: 10, exp: 30)
        
        let ectoplasm = Player(image: UIImage(named: "ectoplasm"), name: "Ectoplasm", desc: "Physical manifestations of bodiless tormented souls.", locations: ["Long Library"], weakness: ["Holy", "Fire"], absorbs: ["Cut"], drops: ["Uncurse"], HP: 18, level: 11, exp: 70)
        
        let swordLord = Player(image: UIImage(named: "swordlord"), name: "Sword Lord", desc: "Knight armed with Greatsword.", locations: ["Clock Tower", "Outer Wall"], weakness: ["None"], absorbs: ["None"], drops: ["Cutlass", "Bekatowa"], HP: 61, level: 11, exp: 80)
        
        let toad = Player(image: UIImage(named: "toad"), name: "Toad", desc: "Toad magically enlarged by demonic baptism.", locations: ["Underground Caverns"], weakness: ["Fire, Thunder"], absorbs: ["Water"], drops: [" Blue Knuckles", "Pizza"], HP: 10, level: 11, exp: 20)
        
        let armorLord = Player(image: UIImage(named: "armorlord"), name: "Armor Lord", desc: "Heavily armored undead warrior.", locations: ["Colosseum", "Outer Wall"], weakness: ["None"], absorbs: ["Cut"], drops: ["Rapier", "Saber"], HP: 81, level: 12, exp: 100)
        
        let cornerGuard = Player(image: UIImage(named: "cornerguard"), name: "Corner Guard", desc: "Armored guard. Strong in perilous areas.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["None"], drops: ["Cutlass", "Damascus Sword"], HP: 32, level: 12, exp: 50)
        
        let dhuron = Player(image: UIImage(named: "dhuron"), name: "Dhuron", desc: "Headless skeleton. Wields a rapier.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["None"], drops: ["Cutlass", "Damascus Sword"], HP: 48, level: 12, exp: 30)
        
        let frog = Player(image: UIImage(named: "frog"), name: "Frog", desc: "Cave-dwelling frog.", locations: ["Underground Caverns"], weakness: ["Fire", "Thunder"], absorbs: ["Water"], drops: ["Knuckle Duster", "Pizza"], HP: 2, level: 12, exp: 20)
        
        let frozenShade = Player(image: UIImage(named: "frozenshade"), name: "Frozen Shade", desc: "Ice-wielding female spirit.", locations: ["Underground Caverns"], weakness: ["Fire"], absorbs: ["Water", "Ice"], drops: ["Ice Mail", "Ice Cream"], HP: 16, level: 12, exp: 40)
        
        let magicTome = Player(image: UIImage(named: "magictome"), name: "Magic Tome", desc: "Book of ancient weapons.", locations: ["Long Library"], weakness: ["Fire"], absorbs: ["Hit"], drops: ["$2000", "Saber"], HP: 22, level: 12, exp: 35)
        
        let skullLord = Player(image: UIImage(named: "skulllord"), name: "Skull Lord", desc: "Giant skull spirit.", locations: ["Clock Tower", "Reverse Keep"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["Scimitar", "Skull Shield"], HP: 80, level: 12, exp: 50)
        
        let blackCrow = Player(image: UIImage(named: "blackcrow"), name: "Black Crow", desc: "Flesh-eating raven.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["Thunder"], drops: ["Zircon", "Pork Bun"], HP: 15, level: 13, exp: 50)
        
        let blueRaven = Player(image: UIImage(named: "blueraven"), name: "Blue Raven", desc: "Spirit of long-dead blue raven.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["Thunder"], drops: ["Zircon", "Pork Bun"], HP: 15, level: 13, exp: 50)
        
        let corpseWeed = Player(image: UIImage(named: "corpseweed"), name: "Corpseweed", desc: "Plant with razor-sharp leaves.", locations: ["Cave", "Black Marble Gallery", "Underground Caverns", "Long Library"], weakness: ["Fire"], absorbs: ["Hit"], drops: ["Antivenom", "Potion"], HP: 18, level: 13, exp: 100)
        
        let flailGuard = Player(image: UIImage(named: "flailguard"), name: "Flail Guard", desc: "Skeleton equipped with spiked iron flail.", locations: ["Clock"], weakness: ["Holy"], absorbs: ["None"], drops: ["Morningstar, Pot Roast"], HP: 36, level: 13, exp: 50)
        
        let fleaRider = Player(image: UIImage(named: "flearider"), name: "Flea Rider", desc: "Flea Man riding on specially trained war-goose.", locations: ["Castle Keep"], weakness: ["None"], absorbs: ["None"], drops: ["Turkey", "Ham and Eggs"], HP: 17, level: 13, exp: 50)
        
        let spectralSword = Player(image: UIImage(named: "spectralsword1"), name: "Spectral Sword", desc: "Evil demon-sword. Causes poltergeist phenomena.", locations: ["Olrox's Quarters"], weakness: ["None"], absorbs: ["None"], drops: ["Broadsword", "Bastard Sword", "Poltergeist: Bwaka Knife"], HP: 90, level: 13, exp: 80)
        
        let boneHalberd = Player(image: UIImage(named: "bonehalberd"), name: "Bone Halberd", desc: "Naginata-wielding skeleton.", locations: ["Royal Chapel"], weakness: ["Holy"], absorbs: ["None"], drops: ["Javelin", "Ham and Eggs"], HP: 30, level: 14, exp: 40)
        
        let scylla = Player(image: UIImage(named: "scylla"), name: "Scylla", desc: "Mythological sea monster.", locations: ["Underground Caverns"], weakness: ["Thunder"], absorbs: ["Water"], drops: ["Life Vessel", "Crystal Cloak"], HP: 200, level: 14, exp: 500)
        
        let huntingGirl = Player(image: UIImage(named: "huntinggirl"), name: "Hunting Girl", desc: "Invisible huntress spirit.", locations: ["Colosseum", "Royal Chapel"], weakness: ["None"], absorbs: ["Holy", "Hit"], drops: ["Were Bane", "Cheesecake"], HP: 88, level: 15, exp: 30)
        
        let mudman = Player(image: UIImage(named: "mudman"), name: "Mudman", desc: "Animated mud golem.", locations: ["Long Library"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 15, level: 15, exp: 50)
        
        let owlKnight = Player(image: UIImage(named: "owlknight"), name: "Owl Knight", desc: "Heavily armored knight. Attacks with trained owl.", locations: ["Colosseum", "Entrance"], weakness: ["None"], absorbs: ["Cut"], drops: ["Cutlass", "Medal"], HP: 180, level: 15, exp: 50)
        
        let spectralSword2 = Player(image: UIImage(named: "spectralsword2"), name: "Spectral Sword", desc: "Evil demon-sword. Causes poltergeist phenomena.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["None"], drops: [" Broadsword", "Bastard Sword", "Puppet swords: Takemitsu"], HP: 100, level: 15, exp: 100)
        
        let vandalSword = Player(image: UIImage(named: "vandalsword"), name: "Vandal Sword", desc: "Sword Lord wields sword even when banished.", locations: ["Clock Tower"], weakness: ["None"], absorbs: ["Hit"], drops: ["Holy Sword", "Muramasa"], HP: 120, level: 15, exp: 100)
        
        let fleaArmor = Player(image: UIImage(named: "fleaarmor"), name: "Flea Armor", desc: "Flea Man armed with axe and shield.", locations: ["Clock Tower", "Long Library"], weakness: ["None"], absorbs: ["None"], drops: ["High Potion", "Iron Cuirass"], HP: 18, level: 16, exp: 40)
        
        let hippogriph = Player(image: UIImage(named: "hippogriph"), name: "Hippogriph", desc: "Part horse, lion and eagle.", locations: ["Royal Chapel"], weakness: ["None"], absorbs: ["Thunder"], drops: ["Life Vessel"], HP: 800, level: 16, exp: 800)
        
        let paranthropus = Player(image: UIImage(named: "paranthropus"), name: "Paranthropus", desc: "Giant skeleton.", locations: ["Colosseum", "Reverse Outer Wall"], weakness: ["Holy"], absorbs: ["None"], drops: ["Gauntlet", "Ring of Varda (if one or more complete game saves)", "Turquoise (if no complete saves, drops instead of Ring of Varda)"], HP: 100, level: 16, exp: 50)
        
        let slime = Player(image: UIImage(named: "slime"), name: "Slime", desc: "Monster made from gel.", locations: ["Catacombs"], weakness: ["Fire"], absorbs: ["Cut"], drops: ["None"], HP: 32, level: 16, exp: 50)
        
        let bladeMaster = Player(image: UIImage(named: "blademaster"), name: "Blade Master", desc: "Master of twin-bladed combat.", locations: ["Colosseum"], weakness: ["None"], absorbs: ["None"], drops: ["Shotel", "Cross Shuriken"], HP: 65, level: 17, exp: 80)
        
        let wereSkeleton = Player(image: UIImage(named: "wereskeleton"), name: "Wereskeleton", desc: "Were panther skeleton.", locations: ["Catecombs"], weakness: ["Holy"], absorbs: ["None"], drops: ["Strength Potion", "Garnet"], HP: 33, level: 17, exp: 50)
        
        let graveKeeper = Player(image: UIImage(named: "gravekeeper"), name: "Gravekeeper", desc: "Grave Keeper. Master of unarmed combat.", locations: ["Catacombs", "Colosseum"], weakness: ["Fire","Thunder","Ice"], absorbs: ["None"], drops: ["Miso Soup", "Natou"], HP: 123, level: 18, exp: 60)
        
        let gremlin = Player(image: UIImage(named: "gremlin"), name: "Gremlin", desc: "Pyromaniacal gremlin.", locations: ["Abandoned Pit to the Catacomb", "Catacombs", "Necromancy Laboratory"], weakness: ["Ice"], absorbs: ["Fire"], drops: ["Resist Fire", "Fire Mail"], HP: 100, level: 18, exp: 60)
        
        let harpy = Player(image: UIImage(named: "harpy"), name: "Harpy", desc: "Creature with head of woman and body of bird.", locations: ["Clock Tower"], weakness: ["None"], absorbs: ["Thunder"], drops: ["Apple", "Life Apple"], HP: 26, level: 18, exp: 70)
        
        let minotaur = Player(image: UIImage(named: "minotaurus"), name: "Minotaur", desc: "Half-man, half-bull.", locations: ["Colosseum"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 300, level: 18, exp: 400)
        
        let werewolf = Player(image: UIImage(named: "werewolf"), name: "Werewolf", desc: "Half-man, half-wolf.", locations:
            ["Colosseum"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 260, level: 18, exp: 300)
        
        let boneArc = Player(image: UIImage(named: "boneark"), name: "Bone Ark", desc: "Portable skull shrine carried by skeleton priests.", locations: ["Catacombs"], weakness: ["Holy","Fire"], absorbs: ["None"], drops: ["Monster Vial 3", "Skull Shield"], HP: 250, level: 19, exp: 40)
        
        let valhallaKnight = Player(image: UIImage(named: "valhallaknight"), name: "Valhalla Knight", desc: "Bloodthirsty undead knight who eternally seeks combat.", locations: ["Colosseum", "Olrox's Quarters", "Reverse Clock Tower"], weakness: ["Holy"], absorbs: ["None"], drops: ["Estoc", "Claymore"], HP: 161, level: 19, exp: 40)
        
        let cloakedKnight = Player(image: UIImage(named: "cloakedknight"), name: "Cloaked Knight", desc: "Mysterious cloaked swordsman.", locations: ["Clock Tower", "Reverse Clock Tower"], weakness: ["None"], absorbs: ["None"], drops: ["Flamberge", "Heaven Sword"], HP: 65, level: 20, exp: 80)
        
        let fishHead = Player(image: UIImage(named: "fishhead"), name: "Fish Head", desc: "Fish head guardian.", locations: ["Underground Caverns"], weakness: ["Holy"], absorbs: ["Fire"], drops: ["Resist Ice","Icebrand"], HP: 70, level: 20, exp: 50)
        
        let lesserDemon = Player(image: UIImage(named: "lesserdemon"), name: "Lesser Demon", desc: "Short magic-wielding demon. Summons demonic allies.", locations: ["Long Library", "Necromancy Laboratory"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["Obsidian Sword", "Holbein Dagger", "Life Vessel", "Soul of Bat", "Takemitsu", "Onyx", "Frankfurter"], HP: 400, level: 20, exp: 100)
        
        let lossoth = Player(image: UIImage(named: "lossoth"), name: "Lossoth", desc: "Searches among graves and knows much wise lore.", locations: ["Catecombs"], weakness: ["None"], absorbs: ["None"], drops: ["Sirloin", "Firebrand"], HP: 99, level: 20, exp: 50)
        
        let salemWitch = Player(image: UIImage(named: "salemwitch"), name: "Salem Witch", desc: "Ghost witches from Salem.", locations: ["Abandoned Pit to the Catacomb", "Necromancy Laboratory"], weakness: ["None"], absorbs: ["None"], drops: ["Gold Circlet", "Shortcake"], HP: 180, level: 20, exp: 80)
        
        let blade = Player(image: UIImage(named: "blade"), name: "Blade", desc: "Eldest Giant brother. Wields two huge daggers.", locations: ["Black Marble Gallery", "Entrance, Olrox's Quarters"], weakness: ["None"], absorbs: ["None"], drops: ["Hunter Sword", "Gold Plate"], HP: 380, level: 21, exp: 100)
        
        let gurkha = Player(image: UIImage(named: "gurkha"), name: "Gurkha", desc: "Giant brother. Wields a gurkha knife.", locations: ["Black Marble Gallery", "Entrance"], weakness: ["None"], absorbs: ["None"], drops: ["Combat Knife", "Gold Plate"], HP: 420, level: 21, exp: 120)
        
        let hammer = Player(image: UIImage(named: "hammer"), name: "Hammer", desc: "Giant brother. Uses huge steel hammer.", locations: ["Olrox's Quarters"], weakness: ["None"], absorbs: ["None"], drops: ["Hammer", "Gold Plate"], HP: 250, level: 21, exp: 110)
        
        let discusLord = Player(image: UIImage(named: "discuslord"), name: "Discus Lord", desc: "Discus-wielding armored knight.", locations: ["Catecombs"], weakness: ["None"], absorbs: ["None"], drops: ["Chakram", "Jewel Sword"], HP: 450, level: 22, exp: 140)
        
        let karasuman = Player(image: UIImage(named: "karasuman"), name: "Karasuman", desc: "Demon Lord of Ravens.", locations: ["Clock Tower", "Death Wings's Lair"], weakness: ["None"], absorbs: ["Dark"], drops: ["Resist Dark", "Ring of Feanor"], HP: 500, level: 22, exp: 1000)
        
        let largeSlime = Player(image: UIImage(named: "largeslime"), name: "Large Slime", desc: "Monster created from slimy gel substance", locations: ["Catecombs"], weakness: ["Fire"], absorbs: ["Cut"], drops: ["None"], HP: 64, level: 22, exp: 100)
        
        let hellfireBeast = Player(image: UIImage(named: "hellfirebeast"), name: "Hellfire Beast", desc: "Thunder-wielding demon. Called 'Musician from Hell'.", locations: ["Catecombs"], weakness: ["None"], absorbs: ["None"], drops: ["Lightning Mail", "Fire Mail"], HP: 380, level: 23, exp: 150)
        
        let cerberus = Player(image: UIImage(named: "cerberus"), name: "Cerberus", desc: "Watchdog of Hell.", locations: [
            "Abandoned Pit to the Catacomb"], weakness: ["Ice"], absorbs: ["Fire"], drops: ["Life Vessel"], HP: 800, level: 23, exp: 1500)
        
        let killerFish = Player(image: UIImage(named: "killerfish"), name: "Killer Fish", desc: "Master Fish-head.", locations: ["Reverse Caverns, Underground Caverns"], weakness:
            ["Thunder"], absorbs: ["Fire", "Water"], drops: ["Aquamarine","Sushi"], HP: 120, level: 25, exp: 100)
        
        let olrox = Player(image: UIImage(named: "orlox2"), name: "Olrox", desc: "Magic-wielding vampire. Rules upper part of castle", locations: ["Olrox's Quarters"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["Life Vessel", "Echo of Bat"], HP: 800, level: 26, exp: 2000)
        
        let succubus = Player(image: UIImage(named: "succubus"), name: "Succubus", desc: "Female demon. Invades men's dreams.", locations: ["Nightmare"], weakness: ["None"], absorbs: ["Dark"], drops: ["Life Vessel, Gold Ring"], HP: 666, level: 25, exp: 2000)
        
        let tombstone = Player(image: UIImage(named: "tombstone"), name: "Tombstone", desc: "Gravestones possessed by evil spirits of dead.", locations: ["Reverse Keep"], weakness: ["Hit"], absorbs: ["Cut (resist)", "Stone (immune)"], drops: ["Katana, Green Tea"], HP: 5, level: 25, exp: 88)
        
        let venusWeed = Player(image: UIImage(named: "venusweed"), name: "Venus Weed", desc: "Watered with human blood.", locations: ["Abandoned Pit to the Catacomb"], weakness: ["Fire"], absorbs: ["Hit"], drops: ["Coral Circlet", "Heart Refresh"], HP: 500, level: 25, exp: 150)
        
        let lion = Player(image: UIImage(named: "lion"), name: "Lion", desc: "The cowardly lion.", locations: ["Forbidden Library"], weakness: ["None"], absorbs: ["None"], drops: ["Gauntlet, Fist of Tulkas"], HP: 150, level: 27, exp: 100)
        
        let scarecrow = Player(image: UIImage(named: "scarecrow"), name: "Scarecrow", desc: "Impaled man looking for brains.", locations: ["Forbidden Library"], weakness: ["None"], absorbs: ["None"], drops: ["Javelin", "Muramasa"], HP: 120, level: 27, exp: 1000)
        
        let granfaloon = Player(image: UIImage(named: "granfalloon2"), name: "Granfaloon", desc: "Nightmarish creature. Composed of many.", locations: ["Catecombs"], weakness: ["Holy"], absorbs: ["Dark"], drops: ["Life Vessel", "Mormegil"], HP: 400, level: 28, exp: 3000)
        
        let schmoo = Player(image: UIImage(named: "schmoo"), name: "Schmoo", desc: "Monster nicknamed schmoo", locations: ["Forbidden Library"], weakness: ["Holy","Fire"], absorbs: ["None"], drops: ["Ramen", "Crissaegrim"], HP: 28, level: 28, exp: 1000)
        
        let tinman = Player(image: UIImage(named: "tinman"), name: "Tin Man", desc: "Heartless tin man.", locations: ["Forbidden Library"], weakness: ["None"], absorbs: ["Cut"], drops: ["Lunch A","Mojo Mail"], HP: 48, level: 28, exp: 1000)
        
        let balloonPod = Player(image: UIImage(named: "balloonpod"), name: "Balloon Pod", desc: "Holds countless poison seeds.", locations: ["Anti-Chapel", "Reverse Caverns"], weakness: ["None"], absorbs: ["None"], drops: ["None"], HP: 3, level: 29, exp: 88)
        
        let yorick = Player(image: UIImage(named: "yorick"), name: "Yorick", desc: "Skeleton eternally chasing his own skull.", locations: ["Reverse Keep"], weakness: ["None"], absorbs: ["None"], drops: ["Monster Vial 3", "Skull Shield", "Iron Ball", "Turquoise"], HP: 10, level: 29, exp: 300)
        
        let bombKnight = Player(image: UIImage(named: "bombknight"), name: "Bomb Knight", desc: "Bomb-tossing armored knight.", locations: ["Reverse Clock Tower"], weakness: ["None"], absorbs: ["None"], drops: ["TNT", "Dynamite"], HP: 46, level: 30, exp: 140)
        
        let flyingZombie = Player(image: UIImage(named: "flyingzombie"), name: "Flying Zombie", desc: "Zombies which attack even when cut in half.", locations: ["Death Wing's Lair"], weakness: ["Holy", "Fire"], absorbs: ["None"], drops: ["Shuriken", "Frankfurter"], HP: 190, level: 32, exp: 50)
        
        let bitterfly = Player(image: UIImage(named: "bitterfly"), name: "Bitterfly", desc: "Mutated Insect. Visible only to magicians.", locations: ["Necromancy Laboratory"], weakness: ["None"], absorbs: ["None"], drops: ["Luck Potion", "Mystic Pendant"], HP: 4, level: 33, exp: 120)
        
        let jackObones = Player(image: UIImage(named: "jackobones"), name: "Jack O' Bones", desc: "Expert at throwing weapons.", locations: ["Black Marble Gallery", "Reverse Caverns", "Reverse Entrance", "Reverse Outer Wall"], weakness: ["None"], absorbs: ["None"], drops: ["Luck Potion, Mystic Pendant"], HP: 20, level: 33, exp: 150)
        
        let archer = Player(image: UIImage(named: "archer"), name: "Archer", desc: "Fiendishly accurate archer.", locations: ["Anti-Chappel"], weakness: ["None"], absorbs: ["None"], drops: ["Heart Refresh", "Vorpal Blade"], HP: 300, level: 34, exp: 140)
        
        let werewolf34 = Player(image: UIImage(named: "werewolf2"), name: "Werewolf [LVL. 34]", desc: "Shape-shifting lycanthrope.", locations: ["Reverse Colosseum"], weakness: ["None"], absorbs: ["None"], drops: ["Iron Fist", "Yastsuna"], HP: 280, level: 34, exp: 200)
        
        let blackPanther = Player(image: UIImage(named: "blackpanther"), name: "Black Panther", desc: "Liquid creature. Takes black panther shape.", locations: ["Anti-Chaple"], weakness: ["Fire"], absorbs: ["None"], drops: ["Meal Ticket", "Masamune"], HP: 35, level: 35, exp: 600)
        
        let darkWingBat = Player(image: UIImage(named: "darkwingbat"), name: "Darkwing Bat", desc: "Giant vampire bat.", locations: ["Reverse Clock Tower"], weakness: ["None"], absorbs: ["None"], drops: ["Ring of Vlad"], HP: 600, level: 35, exp: 1200)
        
        
        return [dracula, bloodSkeleton, bat, stoneSkull, zombie, merman2, skeleton,warg, boneScimitar, merman3, spittleBone, axeKnight, bloodyZombie, slinger, ouijaTable, skelerang, thornweed, gaibon, ghost, marionette, slogra, diplocephalus, fleaman, medusa, bladeSoldier, boneMusket, medusa2, plateLord, stoneRose, axeKnight2, ctulhu, boneArcher, bonePillar, doppleganger10, owl, phantomSkull, scyllaWrym, skeletonApe, spearGuard, spellBook, wingedGuard, ectoplasm, swordLord, toad, armorLord, cornerGuard, dhuron, frog, frozenShade, magicTome, skullLord, blackCrow, blueRaven, corpseWeed, flailGuard, fleaRider, spectralSword, boneHalberd, scylla, huntingGirl, mudman, owlKnight, spectralSword2, vandalSword, fleaArmor, hippogriph, paranthropus, slime, bladeMaster, wereSkeleton, graveKeeper, gremlin, harpy, minotaur, werewolf, boneArc, valhallaKnight, cloakedKnight, fishHead, lesserDemon, lossoth, salemWitch, blade, gurkha, hammer, discusLord, karasuman, largeSlime, hellfireBeast, cerberus, killerFish, olrox, succubus, tombstone, venusWeed, lion, scarecrow, granfaloon, schmoo, tinman, balloonPod, yorick, bombKnight, flyingZombie, bitterfly, jackObones, archer, werewolf34, blackPanther, darkWingBat]
        
    }
    
}
