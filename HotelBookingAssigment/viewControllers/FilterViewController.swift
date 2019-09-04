//
//  FilterViewController.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/4/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    
    @IBOutlet weak var cardViewNone: CardView!
    @IBOutlet weak var cardViewOne: CardView!
    @IBOutlet weak var cardViewTwo: CardView!
    @IBOutlet weak var cardViewThree: CardView!
    @IBOutlet weak var cardViewFive: CardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adjustView(cardViewNone)
        adjustView(cardViewOne)
        adjustView(cardViewTwo)
        adjustView(cardViewThree)
        adjustView(cardViewFive)
        // Do any additional setup after loading the view.
    }
    
    func adjustView(_ view: UIView){
        view.layer.borderWidth = 2.0
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        view.layer.cornerRadius = 10
        view.clipsToBounds      = true
        view.backgroundColor = UIColor.white
    }
    
    static func instantiate() -> FilterViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterViewController") as! FilterViewController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
