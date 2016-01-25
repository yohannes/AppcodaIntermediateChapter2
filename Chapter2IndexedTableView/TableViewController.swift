//
//  TableViewController.swift
//  Chapter2IndexedTableView
//
//  Created by Yohannes Wijaya on 1/25/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Stored Properties
    
    let tableViewCellIdentifier = "TableViewCellIdentifier"
    
    let animals = ["Bear", "Black Swan", "Buffalo", "Camel", "Cockatoo", "Dog", "Donkey", "Emu", "Giraffe", "Greater Rhea", "Hippopotamus", "Horse", "Koala", "Lion", "Llama", "Manatus", "Meerkat", "Panda", "Peacock", "Pig", "Platypus", "Polar Bear", "Rhinoceros", "Seagull", "Tasmania Devil", "Whale", "Whale Shark", "Wombat"]
    
    // MARK: - UIViewController Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.tableViewCellIdentifier)
        
        self.title = "Animals"
    }

    // MARK: - UITableViewDataSource Methods

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(self.tableViewCellIdentifier, forIndexPath: indexPath)
        cell.textLabel?.text = self.animals[indexPath.row]
        let filePathToAnimalImage = self.animals[indexPath.row].lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "_")
        cell.imageView?.image = UIImage(named: filePathToAnimalImage)
        return cell
    }

}
