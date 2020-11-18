//
//  CircleAreaTableViewController.swift
//  Square
//
//  Created by  ShMichail on 08.03.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class CircleAreaTableViewController: tableList {
    
//    var MyArrayCircle: [Square] = []

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        designTabBarController(color: .squape)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["По диаметру", "По радиусу"]
        array = arrayApend(list: listOfFigures)

//        let idArray = MyArrayCircle.count + 1
        
//        print(idArray)
//        MyArrayCircle.append(Square(id: "\(idArray)", name: "По диаметру", title: "По диаметру"))
//        print(idArray)
//        MyArrayCircle.append(Square(id: "2", name: "По радиусу", title: "По радиусу"))
//        print(idArray)
        
        initSearchableItems(array: array)
        designTableView(color: .squape)
       
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

        return cellTable(id: "CircelCell", index: indexPath, in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       cellFilling(array: array, index: indexPath)
    }
}
