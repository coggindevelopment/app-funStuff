//
//  DataSet.swift
//  funStuff
//
//  Created by Nicholas Coggin on 2/14/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation

class DataSet {
    
    let categories = [
        TypeCategory(title: "Books", imageName: ""),
        TypeCategory(title: "Action Figures", imageName: ""),
        TypeCategory(title: "Legos", imageName: "")
    ]

    let books = [
        ItemInfo(title: "Lord of the Rings Trilogy", itemDetails: "The Lord of the Rings Trilogy (Special Collector's Edition) including The Hobbit and The Silmarillion", imageName: "books00")
    ]
    
    func getItems(forCategoryTitle title: String) -> [ItemInfo] {
        switch title {
        case "Books":
            return books
        default:
            return books
        }
    }
    
    
}
