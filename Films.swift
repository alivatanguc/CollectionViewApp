//
//  Films.swift
//  CollectionViewApp
//
//  Created by Delil Güç on 13.04.2023.
//

import Foundation
class Films {
    
    var filmId:Int?
    var filmName:String?
    var filmImage:String?
    var price:Double?
    
    init() {
        
    }
    init(filmId:Int,filmName:String,filmImage:String,price:Double) {
        self.filmId  = filmId
        self.filmName = filmName
        self.filmImage  = filmImage
        self.price = price
    }
}
