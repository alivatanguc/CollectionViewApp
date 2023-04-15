//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by Delil Güç on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    var FilmList  = [Films]()
    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout() // tasarım nesnesi oluşturulur
        let genislik = self.CollectionView.frame.size.width // ekran genişliği belirlenir önemli collectionview ismine göre ama
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        /*UIEdgeInsets" nesnesi kullanarak bir tasarımın kenar boşluklarını (inset'lerini) belirtir.
        
        "UIEdgeInsets" nesnesi, "top" (üst), "left" (sol), "bottom" (alt) ve "right" (sağ) olmak üzere dört farklı kenarlık boyutunu içeren bir yapıdır.

        Bu kod satırında belirtilen değerler sırasıyla, tasarımın üstünden 10 piksel, solundan 10 piksel, altından 10 piksel ve sağ tarafından 10 piksellik boşluk bırakacağını belirtir.

*/


        design.minimumInteritemSpacing = 10 // yatayda hücreler arası boşluk
        design.minimumLineSpacing = 10 // dikeyde hücreler arası boşluk
        design.itemSize = CGSize(width: (genislik-30)/2, height: ((genislik-30)/2)*1.85) // ekranda yatayda ve dikeyde kaç hüccrenin sığmasını istosak ona göre ayarlama yapılmalıdır
        CollectionView!.collectionViewLayout  = design
        
        CollectionView.dataSource  = self
        CollectionView.delegate  = self
    
        let f1 = Films(filmId: 1, filmName: "Django", filmImage: "django", price: 15.99)
        let f2 = Films(filmId: 2, filmName: "Inception", filmImage: "inception", price: 15.99)
        let f3 = Films(filmId: 3, filmName: "Interstellar", filmImage: "interstellar", price: 15.99)
        let f4 = Films(filmId: 4, filmName: "Anadoluda", filmImage: "birzamanlaranadoluda", price: 15.99)
        let f5 = Films(filmId: 5, filmName: "The Hateful Eight", filmImage: "thehatefuleight", price: 15.99)
        let f6 = Films(filmId: 6, filmName: "The Pianist", filmImage: "thepianist", price: 15.99)
        
        FilmList.append(f1)
        FilmList.append(f2)
        FilmList.append(f3)
        FilmList.append(f4)
        FilmList.append(f5)
        FilmList.append(f6)
        
        
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,FilmCellProtocol{
    func ClickButton(indexPath: IndexPath) {
        let film = FilmList[indexPath.row]
        print("SELECTED FİLM : \(film.filmName!)")
    }
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FilmList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = FilmList[indexPath.row]
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath) as! FilmCell
        
        cell.NameLabel.text = film.filmName!
        cell.PriceLabel.text = "\(film.price!) TL "
        cell.ImageView.image  = UIImage(named: film.filmImage!)
        
        cell.indexPath = indexPath
        cell.collectioncell  = self
       
        return cell
    }
    
    
    
    
    
    
    
}


