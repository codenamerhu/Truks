//
//  DashboardViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    
    @IBOutlet weak var tabsetLeading: NSLayoutConstraint!
    @IBOutlet weak var tabsetTrailing: NSLayoutConstraint!
    
    @IBOutlet weak var standardButton: UIButton!
    @IBOutlet weak var heaveyButton: UIButton!
    @IBOutlet weak var superButton: UIButton!
    
    @IBOutlet weak var reserveItNow: UIButton!
    var buttonLocation = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reserveItNow.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func standardClick(_ sender: Any) {
        tabsetMove()
    }
    
}

extension DashboardViewController {
    
    func tabsetMove(){
        if buttonLocation == 0 {
            tabsetLeading.constant = -90
            tabsetTrailing.constant = 170
            
            UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded() })
        }
        
        
        
    }
}
