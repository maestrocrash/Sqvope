//
//  MyTablePerimetr.swift
//  Square
//
//  Created by  ShMichail on 30.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//


import UIKit
import CoreSpotlight
import MobileCoreServices


class MyTablePerimetr: tableList {
    
//    var songInfo: tableElements!
//
//    var ArrayPerimetr: [Square] = []
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        
        designTabBarController(color: .perimetr)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Расчет периметра прямоугольника", "Расчет периметра параллелограма", "Расчет периметра треугольника", "Расчет периметра квадрата", "Расчет периметра трапеции", "Расчет периметра ромба", "Расчет периметра круга"]
        
        array = arrayApend(list: listOfFigures)
        
       
//        ArrayPerimetr.append(Square(id: "1", name: "Расчет периметра прямоугольника", title: "Прямоугольник"))
//        ArrayPerimetr.append(Square(id: "2", name: "Расчет периметра параллелограма", title: "Параллелограм"))
//        ArrayPerimetr.append(Square(id: "3", name: "Расчет периметра треугольника", title: "Треугольник"))
//        ArrayPerimetr.append(Square(id: "4", name: "Расчет периметра квадрата", title: "Квадрат"))
//        ArrayPerimetr.append(Square(id: "5", name: "Расчет периметра трапеции", title: "Трапеция"))
//        ArrayPerimetr.append(Square(id: "6", name: "Расчет периметра ромба", title: "Ромб"))
//      ArrayPerimetr.append(Square(id: "7", name: "Расчет периметра круга", title: "Круг")) test


        initSearchableItems(array: array)

        designTableView(color: .perimetr)
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

        return cellTable(id: "CellPerimetr", index: indexPath,  in: array)
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
     
    }

}

