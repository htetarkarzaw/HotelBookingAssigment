//
//  OuterHotelCollectionViewCell.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/4/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class OuterHotelCollectionViewCell: UICollectionViewCell {


    @IBOutlet weak var innerHotelView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        innerHotelView.dataSource = self
        innerHotelView.delegate = self
        innerHotelView.registerForItem(strID: String(describing: InnerHotelCollectionViewCell.self))
        
        let layout = innerHotelView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: ((UIScreen.main.bounds.width*3/4)), height: 250)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
    }

}

extension OuterHotelCollectionViewCell : UICollectionViewDelegate{
    
}

extension OuterHotelCollectionViewCell : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing:InnerHotelCollectionViewCell.self), for: indexPath) as! InnerHotelCollectionViewCell
        return item
    }
    
    
}
