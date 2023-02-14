//
//  MyTableVolume.swift
//  Square
//
//  Created by  ShMichail on 02.02.15.
//  Copyright (c) 2015  ShMichail. All rights reserved.
//
import UIKit
import CoreSpotlight
import MobileCoreServices


class MyTableVolume: tableList {
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)

        designTabBarController(color: .volume)

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async(execute: { () -> Void in
            self.tableView.reloadData()
        })

    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listOfFigures = ["Расчет объема куба", "Расчет объема параллелепипеда", "Расчет объема пирамид", "Расчет объема конуса", "Расчет объема цилиндра", "Расчет объема шара"]
        array = arrayApend(list: listOfFigures)

        initSearchableItems(array: array)
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
        return cellTable(id: "CellVolume", index: indexPath,  in: array)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellFilling(array: array, index: indexPath)
    }
}
