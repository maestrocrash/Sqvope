//
//  TableTriangleRavnostoron.swift
//  Square
//
//  Created by  ShMichail on 06.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class TableTriangleRavnostoron: tableList {
    
//    var array: [Square] = []
//
//    let ArrayTriangleRavnostoron = [(id: "1", name:"Через катеты"), (id: "2", name:"Через радиус описанной окружности"), (id: "3", name:"Через радиус вписанной окружности"), (id: "4", name: "Через высоту")]

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        designTableView(color: .squape)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Через катеты","Через радиус описанной окружности", "Через радиус вписанной окружности", "Через высоту" ]
        array = arrayApend(list: listOfFigures)

//        let idArray = array.count + 1
//        
//        array.append(Square(id: "\(idArray)", name: "Через катеты", title: "Катет"))
//        array.append(Square(id: "\(idArray)", name: "Через радиус описанной окружности", title: "Радиус"))
//        array.append(Square(id: "\(idArray)", name: "Через радиус вписанной окружности", title: "Радиус"))
//        array.append(Square(id: "\(idArray)", name: "Через высоту", title: "Высота"))
        
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
      
        return cellTable(id: "CellTriangleRavnostoroniy", index: indexPath, in: array)
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
        
     
    }
    
  
}
