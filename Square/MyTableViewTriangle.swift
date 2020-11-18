//
//  MyTableViewTriangle.swift
//  Square
//
//  Created by  ShMichail on 05.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//

import UIKit


class MyTableViewTriangle: tableList {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }

//    var arrayTriangle: [Square] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        designTabBarController(color: .squape)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let listOfFigures = ["Через основание и высоту", "Через две стороны и угол", "Формула Герона", "Через радиус вписанной окружности", "Через радиус описанной окружности", "Площадь прямоугольного треугольника", "Площадь равнобедренного треугольника", "Площадь равностороннего треугольника"]

     
        array = arrayApend(list: listOfFigures)
        
//        let idArray = arrayTriangle.count + 1
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Через основание и высоту", title: "Основание и высота"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Через две стороны и угол", title: "Угол"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Формула Герона", title: "Герон"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Через радиус вписанной окружности", title: "Радиус"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Через радиус описанной окружности", title: "Радиус"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Площадь прямоугольного треугольника", title: "Треугольник"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Площадь равнобедренного треугольника", title: "Треунольник"))
//
//        arrayTriangle.append(Square(id: "\(idArray)", name: "Площадь равностороннего треугольника", title: "Треугольник"))
        
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
   
        return cellTable(id: "CellTriangle", index: indexPath, in: array)
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellFilling(array: array, index: indexPath)
       
    }
 
}
