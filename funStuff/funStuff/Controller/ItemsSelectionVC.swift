//
//  ItemsSelectionVC.swift
//  funStuff
//
//  Created by Nicholas Coggin on 2/15/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ItemsSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory: String!
    var items: [ItemInfo]!
    let data = DataSet()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        items = data.getItems(forCategoryTitle: selectedCategory)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ItemCell {
            let item = items[indexPath.item]
            cell.configureCell(item: item)
            return cell
        }
        return UICollectionViewCell()
    }

}
