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
    var itemToPass: ItemInfo!

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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension + 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemToPass = items[indexPath.item]
        performSegue(withIdentifier: "toItemDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? ItemDetailsVC {
            detailsVC.selectedItem = itemToPass
        }
    }

}
