//
//  PlayerVC.swift
//  SplitView
//
//  Created by Patrick Moening on 7/18/16.
//  Copyright © 2016 Loser Extreme. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var players = Player.makeEnemies()
    var selectedPlayer : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.backgroundColor = UIColor.blackColor()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let player = players[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = player.name
        cell.backgroundColor = UIColor.blackColor()
        cell.textLabel?.textColor = UIColor.redColor()
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let player = players[indexPath.row]
        selectedPlayer = player
        
        performSegueWithIdentifier("ShowDetailSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! DetailVC
        detailVC.player = self.selectedPlayer
    }

}
