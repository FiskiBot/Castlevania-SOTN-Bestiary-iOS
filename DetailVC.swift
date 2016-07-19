//
//  DetailVC.swift
//  SplitView
//
//  Created by Patrick Moening on 7/19/16.
//  Copyright © 2016 Loser Extreme. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var player : Player!
    
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var locationsLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        enemyImg.layer.cornerRadius = enemyImg.frame.size.width / 2
        enemyImg.clipsToBounds = true
        enemyImg.backgroundColor = UIColor.blackColor()
        enemyImg.image = player.image
        nameLbl.text = player.name
        descLbl.text = player.desc
        locationsLbl.text = player.locations.joinWithSeparator(", \n")
    }


}
