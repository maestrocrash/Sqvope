//
//  TableViewKeystone.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableViewKeystone: tableList {
    
//    var ArrayKeystone: [Square] = []
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
    //let ArrayKeystone = [(id: "1", name: "По сторонам и высоте"), (id: "2", name: "По средней линии и высоте") , (id: "3", name: "По сторонам"), (id: "4", name: "По диагоналям") , (id: "5", name: "Площадь равнобедренной трапеции")]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        designTabBarController(color: .squape)
        
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let listOfFigures = ["По сторонам и высоте", "По средней линии и высоте", "По сторонам", "По диагоналям", "Площадь равнобедренной трапеции"]
        array = arrayApend(list: listOfFigures)
        
//        let idArray = ArrayKeystone.count + 1
//        ArrayKeystone.append(Square(id: "\(idArray)", name: "По сторонам и высоте", title: "По сторонам и высоте"))
//        ArrayKeystone.append(Square(id: "\(idArray)", name: "По средней линии и высоте", title: "По средней линии и высоте"))
//        ArrayKeystone.append(Square(id: "\(idArray)", name: "По сторонам", title: "По сторонам"))
//        ArrayKeystone.append(Square(id: "\(idArray)", name: "По диагоналям", title: "По диагоналям"))
//        ArrayKeystone.append(Square(id: "\(idArray)", name: "Площадь равнобедренной трапеции", title: "Площадь равнобедренной трапеции"))

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
    
        return cellTable(id: "CellKeystone", index: indexPath,  in: array)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellFilling(array: array, index: indexPath)
    }
    
    
}
