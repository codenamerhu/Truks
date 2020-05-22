//
//  Page1ViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

protocol Page1Delegate {
    func animateStuff()
}

class Page1ViewController: UIViewController{
    
    @IBOutlet var background: UIView!
    @IBOutlet weak var artWorkBottom: NSLayoutConstraint!
    
    var page1Delegate:Page1Delegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        
        initializeSwipes()
        
        let page1 = Page1ViewController()
        page1.page1Delegate = self
        
        if page1Delegate == nil {
            
        } else {
            page1Delegate!.animateStuff()
        }
        // Do any additional setup after loading the view.
    }

}

extension Page1ViewController: Page1Delegate {
    
    func animateStuff() {
        print("Hey")
        self.artWorkBottom.constant = -400
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded() })
    }
    
    func initializeSwipes(){
        
        //mainView.addGestureRecognizer(.init(target: <#T##Any?#>, action: <#T##Selector?#>))
        
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))

        leftSwipe.direction = .left
        rightSwipe.direction = .right

        background.addGestureRecognizer(leftSwipe)
        //rightContainer.addGestureRecognizer(leftSwipe)
        background.addGestureRecognizer(rightSwipe)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
       {
           if (sender.direction == .left)
           {
              // show the view from the right side
            animateStuff()
           }

           if (sender.direction == .right)
           {
            
            }
        // show the view from the left side
    }
    
    
}
