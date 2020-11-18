//
//  VolumeConusTableViewController.swift
//  Square
//
//  Created by  ShMichail on 08.03.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class VolumeConusTableViewController: tableList {
    
//    var array: [Square] = []
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
        designTabBarController(color: .volume)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let listOfFigures = ["Конуса", "Усеченного конуса"]
        array = arrayApend(list: listOfFigures)
        
//        let idArray = array.count + 1
//
//        array.append(Square(id: "\(idArray)", name: "Конуса", title: "Конус"))
//        array.append(Square(id: "\(idArray)", name: "Усеченного конуса", title: "Конус"))
        
        designTableView(color: .volume)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return cellTable(id: "ConusCell", index: indexPath,  in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
        
    }
    

}
