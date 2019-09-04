//
//  SearchViewController.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/3/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit
import FittedSheets

class SearchViewController: UIViewController {

    
    @IBOutlet weak var collectionViewHotel: UICollectionView!
    @IBOutlet weak var svHotel: UIScrollView!
    @IBOutlet weak var cvFilter: CardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cvFilter.cornerRadius = cvFilter.frame.height/2
        collectionViewHotel.delegate = self
        collectionViewHotel.dataSource = self
        collectionViewHotel.registerForItem(strID: String(describing: OuterHotelCollectionViewCell.self))
        let layout = collectionViewHotel.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = 8
        layout.itemSize = CGSize(width: (self.view.frame.width-8), height: 250)
        let nib = UINib(nibName: String(describing: HotelHeaderView.self), bundle: nil)
        collectionViewHotel.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: HotelHeaderView.self))
        
        let scrollSize = CGSize(width: UIScreen.main.bounds.width - 30, height: self.collectionViewHotel.contentSize.height)
        
        svHotel.contentSize = scrollSize
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector (filter (_:)))
        cvFilter.addGestureRecognizer(gesture)
    }
    
    @objc func filter(_ sender:UITapGestureRecognizer){
        let controller = FilterViewController.instantiate()
        
        let sheetController = SheetViewController(controller: controller, sizes: [.fixed(self.view.frame.height*3/4),.fullScreen])
        
        // Adjust how the bottom safe area is handled on iPhone X screens
        sheetController.blurBottomSafeArea = true
        sheetController.adjustForBottomSafeArea = true
        
        // Turn off rounded corners
        sheetController.topCornersRadius = 0
        
        // Make corners more round
        sheetController.topCornersRadius = 15
        
        // Disable the dismiss on background tap functionality
        sheetController.dismissOnBackgroundTap = true
        
        // Extend the background behind the pull bar instead of having it transparent
        sheetController.extendBackgroundBehindHandle = true
        
        // Change the overlay color
//        sheetController.overlayColor = UIColor.white
        
        // Change the handle color
        sheetController.handleColor = UIColor.darkText
        
        self.present(sheetController, animated: false, completion: nil)
    }

}

extension SearchViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: OuterHotelCollectionViewCell.self), for: indexPath) as! OuterHotelCollectionViewCell
        return item
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
}

extension SearchViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeaderView =
            collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: HotelHeaderView.self), for:indexPath) as! HotelHeaderView
        
        let category = indexPath.section == 0 ? "TOP SEARCHS" : "RECENT SEARCHS"
        sectionHeaderView.mData = category
        
        return sectionHeaderView
    }
}
