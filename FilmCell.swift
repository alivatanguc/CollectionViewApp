//
//  FilmCell.swift
//  CollectionViewApp
//
//  Created by Delil Güç on 14.04.2023.
//

import UIKit
protocol FilmCellProtocol {
    func ClickButton (indexPath:IndexPath)
}

class FilmCell: UICollectionViewCell {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    var collectioncell:FilmCellProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buto(_ sender: Any) {
        collectioncell?.ClickButton(indexPath: indexPath!)
    }
}
