//
//  TableViewDiamond.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableViewDiamond: tableList {
    
//    var ArraySixangle: [Square] = []

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
        
        let listOfFigures = ["По стороне", "По радиусу описанной окружности", "По радиусу вписанной окружности"]
        array = arrayApend(list: listOfFigures)

//        let idArray = ArraySixangle.count + 1
//
//        ArraySixangle.append(Square(id: "\(idArray)", name: "По стороне", title: "По стороне"))
//        ArraySixangle.append(Square(id: "\(idArray)", name: "По радиусу описанной окружности", title: "По радиусу описанной окружности"))
//        ArraySixangle.append(Square(id: "\(idArray)", name: "По радиусу вписанной окружности", title: "По радиусу вписанной окружности"))
        
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

        return cellTable(id: "CellSixangle", index: indexPath, in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        cellFilling(array: array, index: indexPath)
    }
    

}
