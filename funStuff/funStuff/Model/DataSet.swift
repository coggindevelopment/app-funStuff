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
        TypeCategory(title: "Books", imageName: "booksImg"),
        TypeCategory(title: "Action Figures", imageName: "afImg"),
        TypeCategory(title: "Legos", imageName: "legosImg")
    ]

    let books = [
        ItemInfo(title: "Lord of the Rings Trilogy (Collector's Edition)", itemDetails: "The Lord of the Rings Trilogy (Special Collector's Edition), including The Hobbit and The Silmarillion.", imageName: "books00"),
        ItemInfo(title: "Lord of the Rings Trilogy (Standard)", itemDetails: "The Lord of the Rings Trilogy (Standard Edition), including The Hobbit.", imageName: "books01")
    ]
    
    let actionFigures = [
        ItemInfo(title: "LotR Gimli Action Figure", itemDetails: "The Gimli action figure from the Lord of the Rings Trilogy.", imageName: "af00"),
        ItemInfo(title: "LotR Witch-king Action Figure", itemDetails: "The Witch-king of Angmar action figure from the Lord of the Rings Trilogy. \n\nAlso known as the Lord of the Nazgûl and the Black Captain, a character in Tolkien's legendarium. In J. R. R. Tolkien's The Lord of the Rings, he is the chief of the Nazgûl or Ringwraiths, the chief servants of the Dark Lord, Sauron. \n\nAliases: \n - Black Captain \n - Lord of the Nazgûl \n - Chieftain of the Ringwraiths \n\nRace: \n - Nazgûl \n - Men \nBook(s): \n - The Fellowship of the Ring (1954) \n - The Two Towers (1954) \n - The Return of the King (1955) \n - Unfinished Tales (1980) \n\nMovie: \n - The Fellowship of the Ring (2001) \n - The Two Towers (2002) \n - The Return of the King (2003) \n - The Hobbit: An Unexpected Journey (2012) \n - The Hobbit: The Desolation of Smaug (2013)", imageName: "af01")
    ]
    
    let legos = [
        ItemInfo(title: "Lego Star Wars Death Star Set", itemDetails: "The Lego Star Wars Death Star set. \nItem #10188.", imageName: "legos00"),
        ItemInfo(title: "Lego Creative Bucket", itemDetails: "The Lego Creative Bucket. \nAges: 4-99. \n607 pieces. \nItem #10662.", imageName: "legos01")
    ]
    
    func getItems(forCategoryTitle title: String) -> [ItemInfo] {
        switch title {
        case "Books":
            return books
        case "Action Figures":
            return actionFigures
        case "Legos":
            return legos
        default:
            return books
        }
    }
    
    
}
