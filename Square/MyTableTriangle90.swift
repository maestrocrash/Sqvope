//
//  MyTableTriangle90.swift
//  Square
//
//  Created by  ShMichail on 05.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class MyTableTriangle90: tableList {
    
//    var array: [Square] = []
    
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
        
        let listOfFigures = ["Через катеты", "Через гипотенузу", "По формуле Герона",]
        array = arrayApend(list: listOfFigures)
        
//        let idArray = array.count + 1
//
//        array.append(Square(id: "\(idArray)", name: "Через катеты", title: "Катет"))
//        array.append(Square(id: "\(idArray)", name: "Через гипотенузу", title: "Гипотенуза"))
//        array.append(Square(id: "\(idArray)", name: "По формуле Герона", title: "Герон"))
        
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
      
        return cellTable(id: "CellTriangle90", index: indexPath,  in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
        
        
    }

    

}
