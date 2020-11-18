//
//  MyTableViewController.swift
//  Square
//
//  Created by  ShMichail on 29.01.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//


import UIKit
import CoreSpotlight
import MobileCoreServices


class MyTableViewController: tableList {

//    var square: Square!
//
//    fileprivate var MyArray: [Square] = []
    fileprivate var searchedSongIdentifier: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        designTabBarController(color: .squape)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Расчет площади круга","Расчет площади квадрата", "Расчет площади треугольника", "Расчет площади ромба", "Расчет площади параллелограмма", "Расчет площади прямоугольника", "Расчет площади трапеции", "Расчет площади четырехугольника", "Расчет площади шестиугольника", "Расчет площади эллипса", "Расчет площади кольца", "Расчет площади сектора круга", "Расчет площади сегмента круга"]
        array = arrayApend(list: listOfFigures)

//        MyArray.append(Square(id: "1", name: "Расчет площади круга", title: "Круг"))
//        MyArray.append(Square(id: "2", name: "Расчет площади квадрата", title: "Квадрат"))
//        MyArray.append(Square(id: "3", name: "Расчет площади треугольника", title: "Треугольник"))
//        MyArray.append(Square(id: "4", name: "Расчет площади ромба", title: "Ромб"))
//        MyArray.append(Square(id: "5", name: "Расчет площади параллелограмма", title: "Параллелограмм"))
//        MyArray.append(Square(id: "6", name: "Расчет площади прямоугольника", title: "Прямоугольник"))
//        MyArray.append(Square(id: "7", name: "Расчет площади трапеции", title: "Трапеция"))
//        MyArray.append(Square(id: "8", name: "Расчет площади четырехугольника", title: "Четырехугольник"))
//        MyArray.append(Square(id: "9", name: "Расчет площади шестиугольника", title: "Шестиугольник"))
//        MyArray.append(Square(id: "10", name: "Расчет площади эллипса", title: "Эллипс"))
//        MyArray.append(Square(id: "11", name: "Расчет площади кольца", title: "Кольцо"))
//        MyArray.append(Square(id: "12", name: "Расчет площади сектора круга", title: "Сектор круга"))
//        MyArray.append(Square(id: "13", name: "Расчет площади сегмента круга", title: "Сегмент круга"))

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
       
        return cellTable(id: "MyCell", index: indexPath, in: array)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        cellFilling(array: array, index: indexPath)
 
    }


    // MARK: - Navigation

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let songId1: Int
//        if let index = (tableView.indexPathForSelectedRow as NSIndexPath?)?.row {
//            songId1 = index
//        } else {
//            songId1 = searchedSongIdentifier!
//        }
//      
//    }
    
    override func restoreUserActivityState(_ activity: NSUserActivity) {
        if activity.activityType == CSSearchableItemActionType {
            if let identifier = Int(activity.userInfo?[CSSearchableItemActivityIdentifier] as! String) {
                searchedSongIdentifier = identifier
                performSegue(withIdentifier: "showDetail", sender: self)
            }
        }
    }
  
    
    
}
