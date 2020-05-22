//
//  ReservationsTableViewController.swift
//  Trucks
//
//  Created by Rhulani Ndlovu on 2020/05/22.
//  Copyright © 2020 SBI. All rights reserved.
//

import UIKit

class ReservationsTableViewController: UITableViewController {

    @IBOutlet var reservationsTable: UITableView!
    let rCell = "reservationsCell"
    
    var trukNames = ["Ford F-150 Raptor","Chevrolet Silverado","Toyota Tocoma TRD","Chevrolet Ram 1500"]
    var trukImages = ["Ford","Dodge","Toyota","Dodge"]
    var trukPrices = ["R1500 on Jan 12, 2020","R900 on Feb 22, 2020","R700 on Mar 10, 2020","R1000 on May 25, 2020"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reservationsTable.delegate = self
        reservationsTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
}


extension ReservationsTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("did select")
    }
}


extension ReservationsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: rCell, for: indexPath) as! ReservationsCell
        
        cell.trukName.text = trukNames[indexPath.row]
        cell.truckPriceAndDate.text = trukPrices[indexPath.row]
        cell.trukImage.image = UIImage(named: trukImages[indexPath.row])
        
        cell.truckViewButton.layer.cornerRadius = 4
        
        
        return cell
        
    }
}


class ReservationsCell : UITableViewCell {
    @IBOutlet weak var trukImage: UIImageView!
    @IBOutlet weak var trukName: UILabel!
    @IBOutlet weak var truckPriceAndDate: UILabel!
    @IBOutlet weak var truckViewButton: UIButton!
    
}
