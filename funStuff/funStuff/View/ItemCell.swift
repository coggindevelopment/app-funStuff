//
//  ItemCell.swift
//  funStuff
//
//  Created by Nicholas Coggin on 2/15/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImg: UIImageView!
    @IBOutlet weak var itemTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemImg.layer.cornerRadius = 10
    }
    
    func configureCell(item: ItemInfo) {
        itemImg.image = UIImage(named: item.imageName)
        itemTitleLbl.text = item.title
    }
}
