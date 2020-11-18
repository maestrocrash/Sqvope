//
//  CalcutionPyramid.swift
//  Square
//
//  Created by  ShMichail on 04.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit

class CalcutionPyramid: tableList {
 
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
     
    
//    let ArrayPyramid = [(id: "1" , name: "Пирамиды"),(id: "2" , name: "Правильной пирамиды"),(id: "3" , name: "Правильной треугольной пирамиды"),(id: "4" , name: "Правильной четырехугольной пирамиды"),(id: "5" , name: "Тетраэдра"),(id: "6" , name: "Усеченной пирамиды")]

    override func viewDidLoad() {
        super.viewDidLoad()

//        var idArray = 1
        
        let listOfFigures = ["Пирамиды", "Правильной пирамиды", "Правильной треугольной пирамиды", "Правильной четырехугольной пирамиды", "Тетраэдра", "Усеченной пирамиды"]
        
        array = arrayApend(list: listOfFigures)
        
//        array.append(Square(id: "\(idArray)", name: "Пирамиды", title: "Пирамиды"))
//        array.append(Square(id: "\(idArray)", name: "Правильной пирамиды", title: "Правильной пирамиды"))
//        array.append(Square(id: "\(idArray)", name: "Правильной треугольной пирамиды", title: "Правильной треугольной пирамиды"))
//
//        array.append(Square(id: "\(idArray)", name: "Правильной четырехугольной пирамиды", title: "Пирамида"))
//
//        array.append(Square(id: "\(idArray)", name: "Тетраэдра", title: "Тетраэдр"))
//
//        array.append(Square(id: "\(idArray)", name: "Усеченной пирамиды", title: "Пирамида"))
        
//        let collectionDictionary = ["Пирамиды":"Пирамиды", "Правильной пирамиды":"Правильной пирамиды", "Правильной треугольной пирамиды":"Правильной треугольной пирамиды", "Правильной четырехугольной пирамиды": "Пирамида", "Тетраэдра": "Тетраэдра", "Усеченной пирамиды": "Пирамида" ]
//
//        for (name, title) in collectionDictionary {
//            array.append(Square(id: "\(idArray)", name: name, title: title))
//            idArray += 1
//        }

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
     
        return cellTable(id: "CellPyramid", index: indexPath, in: array)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
        
    }

   
}
