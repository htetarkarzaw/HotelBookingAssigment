//
//  Extension.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/3/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import Foundation
import UIKit
extension UITableView{
    
    func registerForCell(strID : String) {
        register(UINib(nibName: strID, bundle: nil), forCellReuseIdentifier: strID)
    }
}


extension UICollectionView{
    
    func registerForItem(strID : String) {
        register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
    }
}

