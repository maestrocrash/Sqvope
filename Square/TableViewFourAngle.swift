//
//  TableViewFourAngle.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableViewFourAngle: tableList {
    
//    var ArrayFourAngle: [Square] = []
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
//    let ArrayFourAngle = [(id: "1", name: "Произвольного четырехугольника") , (id: "2", name:"Вписанного четырехугольника")]
   
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.barTintColor = UIColorFromRGB(0xFF9500)
        self.tabBarController?.tabBar.tintColor = UIColor.white
        
        designTabBarController(color: .squape)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Произвольного четырехугольника", "Вписанного четырехугольника"]
        array = arrayApend(list: listOfFigures)
        
//        let idArray = ArrayFourAngle.count + 1
//
//        ArrayFourAngle.append(Square(id: "\(idArray)", name: "Произвольного четырехугольника", title: "Произвольного четырехугольника"))
//        ArrayFourAngle.append(Square(id: "\(idArray)", name: "Вписанного четырехугольника", title: "Вписанного четырехугольника"))
//
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

        return cellTable(id: "CellFourAngle", index: indexPath, in: array)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        cellFilling(array: array, index: indexPath)
    }


}
