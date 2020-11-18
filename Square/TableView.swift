//
//  TableView.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableView: tableList {
    
    
//    var ArrayRectangle: [Square] = []
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
    //let ArrayRectangle = [(id: "1" , name: "По сторонам"), (id: "2", name: "По диагоналям и углу")]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        designTabBarController(color: .squape)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let listOfFigures = ["По сторонам", "По диагоналям и углу"]
        array = arrayApend(list: listOfFigures)
        
//        let idArray = ArrayRectangle.count + 1
//
//        ArrayRectangle.append(Square(id: "\(idArray)", name: "По сторонам", title: "По сторонам"))
//        ArrayRectangle.append(Square(id: "\(idArray)", name: "По диагоналям и углу", title: "По диагоналям и углу"))
        
        initSearchableItems(array: array)
        designTabBarController(color: .squape)
  
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

        return cellTable(id: "CellRectangle", index: indexPath,  in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
    }
    

    

}
