//
//  ReservationsViewController.swift
//  Trucks
//
//  Created by SBI Admin on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class ReservationsViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var dateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        viewSetup()
    }

}

extension ReservationsViewController {
    
    func viewSetup(){
        
        dateButton.layer.cornerRadius = 4
        
        topView.layer.shadowRadius = 8
        topView.layer.shadowColor = UIColor.darkGray.cgColor
        topView.layer.shadowOffset = CGSize(width: 0, height: 0)
        topView.layer.shadowOpacity = 0.5
    }
}
