//
//  ItemDetailsVC.swift
//  funStuff
//
//  Created by Nicholas Coggin on 2/18/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController {
    
    @IBOutlet weak var itemImg: UIImageView!
    @IBOutlet weak var itemTitleLbl: UILabel!
    @IBOutlet weak var itemDetailLbl: UILabel!
    
    var selectedItem: ItemInfo!

    override func viewDidLoad() {
        super.viewDidLoad()
        itemImg.image = UIImage(named: selectedItem.imageName)
        itemTitleLbl.text = selectedItem.title
        itemDetailLbl.text = selectedItem.itemDetails
    }

}
