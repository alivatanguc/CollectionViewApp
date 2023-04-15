//
//  CollectionViewCell.swift
//  CollectionViewApp
//
//  Created by Delil Güç on 13.04.2023.
//

import UIKit



class CollectionViewCell: UICollectionViewCell {
   
    var collectioncell: CollectionViewCellProtocol?
    var indexPath : IndexPath?
    @IBAction func Clickbutton(_ sender: Any) {
        
        collectioncell?.ClickButton(indexPath: indexPath!)
        
    }
}
