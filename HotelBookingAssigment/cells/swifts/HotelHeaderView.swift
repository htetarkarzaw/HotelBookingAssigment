//
//  HotelHeaderView.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/4/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class HotelHeaderView: UICollectionReusableView {

    @IBOutlet weak var lblHeader: UILabel!
    var mData : String = ""{
        didSet{
            lblHeader.text = mData
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
