//
//  Pythagoras.swift
//  portfolioRosen
//
//  Created by Rosen, Aidan on 3/12/20.
//  Copyright © 2020 Rosen, Aidan. All rights reserved.
//

import UIKit

class Pythagoras: UIViewController {
   
    @IBOutlet weak var Leg2: UITextField!
    @IBOutlet weak var Leg1: UITextField!
    @IBOutlet weak var Leg3: UILabel!
    @IBOutlet weak var Hypotenuse: UIButton!
    override func viewDidLoad() {
           super.viewDidLoad()
           Leg1.text = "0.0"
           Leg2.text = "0.0"
           Leg3.text = "0.0"

           
       }
    @IBAction func calculate(sender:UIButton){
        print("\ntriggered\n")
        //Above is for monitoring if this triggered or not
        let s1 = Float(Leg1.text!)
        let s2 = Float(Leg2.text!)
        let s3 = sqrt((s1!*s1!)+(s2!*s2!))
        Leg3.text = String(s3)
        
    }

}
