//
//  MenuViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var darkbackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //darkbackground.layer.cornerRadius = 50
        darkbackground.layer.shadowColor = UIColor.darkGray.cgColor
        darkbackground.layer.shadowRadius = 4
        darkbackground.layer.shadowOffset = CGSize(width: 0, height: 0)

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

}
