//
//  OnBoardingMainViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class OnBoardingMainViewController: UIViewController {
    @IBOutlet weak var nextLabel: UILabel!
    @IBOutlet weak var dotsImage: UIImageView!
    
    @IBOutlet weak var nextLabelLeading: NSLayoutConstraint!
    @IBOutlet weak var nextLabelTrailing: NSLayoutConstraint!
    @IBOutlet weak var page1Leading: NSLayoutConstraint!
    @IBOutlet weak var page1Traling: NSLayoutConstraint!
    
    var count = 0
    
    var page1Delegate:Page1Delegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        page1Delegate?.animateStuff()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        //animateNextLabel()
        
        if count == 0 {
            animateDots()
            animatePhoneImage()
            animatePage1()
            count = count + 1
        } else {
            
            let vc = UIStoryboard(name: "Dashboard", bundle:nil).instantiateViewController(withIdentifier: "dashboard") as! DashboardViewController
            
            self.present(vc, animated: true, completion: nil)
            
        }
        
    }
    
}


extension OnBoardingMainViewController {
    
    
    func animateNextLabel(){
        nextLabelLeading.constant = 400
        nextLabelTrailing.constant = -400
        
        
        UIView.animate(withDuration: 0.6, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded() })
    }
    
    func animateDots(){
        dotsImage.image = UIImage(named: "Dots2")
    }
    
    func animatePhoneImage(){
        page1Leading.constant = -400
        page1Traling.constant = 400
        
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded() })
    }
    
    func animatePage1(){
        
        print("p1 func")
        page1Delegate?.animateStuff()
        let page1 = Page1ViewController()
        page1.page1Delegate?.animateStuff()
        //page1.animateStuff()
    }
    
    
}
