//
//  TableTriangleRavnobedrenyi.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableTriangleRavnobedrenyi: tableList {
  
    
//    var array: [Square] = []
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
//    let ArrayTriangleRav = [(id: "1", name: "Через гипотенузу,катет и угол"), (id: "2", name: "Через гипотенузу и угол"), (id: "3", name: "Через катет и угол")]
//
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        designTabBarController(color: .squape)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Через гипотенузу,катет и угол", "Через гипотенузу и угол", "Через катет и угол" ]
        array = arrayApend(list: listOfFigures)

//        let idArray = array.count + 1
//
//
//        array.append(Square(id: "\(idArray)", name: "Через гипотенузу,катет и угол", title: "Гипотенуза"))
//
//        array.append(Square(id: "\(idArray)", name: "Через гипотенузу и угол", title: "Гипотенуза"))
//
//        array.append(Square(id: "\(idArray)", name: "Через катет и угол", title: "Катет"))
        
        
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
        
        return cellTable(id: "TriangleRavno", index: indexPath, in: array)

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)

    }


}
