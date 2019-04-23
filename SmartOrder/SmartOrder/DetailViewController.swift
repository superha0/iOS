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
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var shot: UILabel!
    @IBOutlet weak var resultPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "\(coffeeForView!.price)"
        
        coffee.image = UIImage(named: "그린커피_배경")
        coffeeName.text = coffeeForView?.coffee
        price.text = "\(str) 원"
        resultPrice.text = "\(str)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(coffeeForView!.coffee)
    }
    @IBAction func amountMinus(_ sender: Any) {
        let str = amount.text
        let num = Int(str!)
        let rp = Int(resultPrice.text!)
        let cp = Int(coffeeForView!.price)
        
        if amount.text != "1" {
            amount.text = "\(num!-1)"
            resultPrice.text = "\(rp!-cp)"
        }
    }
    
    @IBAction func amountPlus(_ sender: Any) {
        let str = amount.text
        let num = Int(str!)
        let rp = Int(resultPrice.text!)
        let cp = Int(coffeeForView!.price)
 
        amount.text = "\(num!+1)"
        resultPrice.text = "\(rp! + cp)"
        
    }
    @IBAction func shotMinus(_ sender: Any) {
        let str = shot.text
        let num = Int(str!)
        let rp = Int(resultPrice.text!)
        
        let amt = amount.text
        
        if shot.text != "0" {
            shot.text = "\(num!-1)"
            resultPrice.text = "\(rp!-500*(Int(amt!)!))"
        }
    }
    @IBAction func shotPlus(_ sender: Any) {
        let str = shot.text
        let num = Int(str!)
        let rp = Int(resultPrice.text!)
        
        let amt = amount.text
        
        shot.text = "\(num!+1)"
        resultPrice.text = "\(rp!+500*(Int(amt!)!))"
        
    }
}
