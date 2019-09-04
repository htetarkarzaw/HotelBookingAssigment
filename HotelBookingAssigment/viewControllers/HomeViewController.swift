//
//  ViewController.swift
//  HotelBookingAssigment
//
//  Created by Htet Arkar Zaw on 9/3/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var btnNearby: UIButton!
    @IBOutlet weak var btnPopular: UIButton!
    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var tvHotel: UITableView!
    @IBOutlet weak var ivProfile: UIImageView!
    var type = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ivProfile.layer.cornerRadius = ivProfile.frame.width/2
        tvHotel.delegate = self
        tvHotel.dataSource = self
        tvHotel.registerForCell(strID: String(describing: HotelTableViewCell.self))
        
        
    }
    
    
    @IBAction func clickNearby(_ sender: Any) {
        clickType(index: 0)
    }
    
    @IBAction func clickPopular(_ sender: Any) {
        clickType(index: 1)
    }
    @IBAction func clickAll(_ sender: Any) {
        clickType(index: 2)
    }
    
    
    func clickType(index : Int){
        switch index {
        case 0:
            btnNearby.setTitleColor(#colorLiteral(red: 0.4745098039, green: 0.05490196078, blue: 0.5450980392, alpha: 1), for: .normal)
            btnPopular.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnAll.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            break
        case 1:
            btnNearby.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnPopular.setTitleColor(#colorLiteral(red: 0.4745098039, green: 0.05490196078, blue: 0.5450980392, alpha: 1), for: .normal)
            btnAll.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            break
        case 2:
            btnNearby.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnPopular.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnAll.setTitleColor(#colorLiteral(red: 0.4745098039, green: 0.05490196078, blue: 0.5450980392, alpha: 1), for: .normal)
            break
        default:
            btnNearby.setTitleColor(#colorLiteral(red: 0.4745098039, green: 0.05490196078, blue: 0.5450980392, alpha: 1), for: .normal)
            btnPopular.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnAll.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
        }
    }
}



extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HotelTableViewCell.self), for: indexPath) as! HotelTableViewCell
        return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate{
    
}

