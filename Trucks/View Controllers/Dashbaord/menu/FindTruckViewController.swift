//
//  FindTruckViewController.swift
//  Trucks
//
//  Created by SBI Admin on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class FindTruckViewController: UIViewController {

    @IBOutlet weak var findButton: UIButton!
    @IBOutlet weak var bContent: UIView!
    @IBOutlet weak var addresHolder: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        addresHolder.layer.shadowColor = UIColor.darkGray.cgColor
        addresHolder.layer.shadowRadius = 10
        addresHolder.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        bContent.layer.cornerRadius = 30
        
        findButton.layer.cornerRadius = 5
        findButton.layer.shadowColor = UIColor.darkGray.cgColor
        findButton.layer.shadowRadius = 5
        findButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        addresHolder.layer.masksToBounds = false
    }
    
    override func viewDidLayoutSubviews() {
        self.prepareUI()
    }
    
    func prepareUI(){
        addresHolder.layer.shadowColor = UIColor.darkGray.cgColor
        addresHolder.layer.shadowRadius = 10
        addresHolder.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        bContent.layer.cornerRadius = 30
        
        findButton.layer.cornerRadius = 5
        findButton.layer.shadowColor = UIColor.darkGray.cgColor
        findButton.layer.shadowRadius = 5
        findButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        addresHolder.layer.masksToBounds = false
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
