//
//  OfferViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class OfferViewController: UIViewController {

    
    
    
    var reuseId = "offerCell"
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension OfferViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseId, for: indexPath) as! OfferCell
        
        //cell.contentWrapper.layer.cornerRadius = 50
        cell.contentWrapper.layer.shadowColor = UIColor.darkGray.cgColor
        cell.contentWrapper.layer.shadowRadius = 10
        cell.contentWrapper.layer.shadowOffset = CGSize(width: 0, height: 0)
        cell.contentWrapper.layer.shadowOpacity = 0.8
        
        
        return cell
    }
    
    
}

class OfferCell : UICollectionViewCell {
    
    @IBOutlet weak var contentWrapper: UIView!
}


