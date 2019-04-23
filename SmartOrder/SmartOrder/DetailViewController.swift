//
//  DetailViewController.swift
//  SmartOrder
//
//  Created by 하영 on 2019. 4. 18..
//  Copyright © 2019년 하영. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var coffeeForView:Menu?
    
    @IBOutlet weak var coffee: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var coffeeName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coffeePrice = "\(coffeeForView!.price) 원"
        
        coffee.image = UIImage(named: "그린커피_배경")
        coffeeName.text = coffeeForView?.coffee
        price.text = coffeePrice
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(coffeeForView?.coffee)
    }

}
