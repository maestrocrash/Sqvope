//
//  Find.swift
//  Square
//
//  Created by Shakhvorostov on 10/07/2019.
//  Copyright © 2019  ShMichail. All rights reserved.
//

import Foundation
import UIKit
import CoreSpotlight
import MobileCoreServices


 
    func initSearchableItems(array: [Square]) {
        var searchableItems: [CSSearchableItem] = []
        for i in 0 ..< array.count {
            let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeItem as String)
            
            attributeSet.title = array[i].title
            attributeSet.contentDescription = array[i].name
            
            
            let searchableItem = CSSearchableItem(uniqueIdentifier: "id"+String(i), domainIdentifier: "Edestima.Square", attributeSet: attributeSet)
            searchableItems.append(searchableItem)
 
        }
        
        CSSearchableIndex.default().indexSearchableItems(searchableItems) { (error) -> Void in
            if error == nil {
                
                print("Searchable items were indexed successfully")
            }
            else {
                print(error?.localizedDescription as Any)
            }
        }
    }
    


