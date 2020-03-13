//
//  Stoich.swift
//  portfolioRosen
//
//  Created by Rosen, Aidan on 3/13/20.
//  Copyright © 2020 Rosen, Aidan. All rights reserved.
//

import UIKit

class Stoich: UIViewController {

   
    @IBOutlet weak var sampleWeight: UILabel!
    @IBOutlet weak var atomicNumber: UILabel!
    @IBOutlet weak var molarMass: UILabel!
    @IBOutlet weak var oxygen: UIButton!
    @IBOutlet weak var gold: UIButton!
    @IBOutlet weak var silver: UIButton!
    @IBOutlet weak var inputWeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        atomicNumber.text = "0.0"
        molarMass.text = "0.0"
        sampleWeight.text = "0.0"
        //the below sets to zero to avoid errors with undefined values
        inputWeight.text = "0.0"

        // Do any additional setup after loading the view.
    }
    //I use tuples in the format (atomic number, atomic mass)
    let oxygenInfo = (atomicNumber: 8, atomicMass: Float(16))
    let silverInfo = (atomicNumber: 47, atomicMass: Float(107.8))
    let goldInfo =  (atomicNumber: 79, atomicMass: Float(196.96))
    @IBAction func chemCalc(sender:UIButton){
        switch sender {
        case oxygen:
            //I use tuples to refer to different elements and different data types
            molarMass.text = String(oxygenInfo.1)
            atomicNumber.text = String(oxygenInfo.0)
            let weight = Float(inputWeight.text!)
            let moles = Float(weight!/oxygenInfo.1)
            sampleWeight.text = String(moles)
            
            print ("Oxygen works")
        case gold:
            molarMass.text = String(goldInfo.1)
            atomicNumber.text = String(goldInfo.0)
            let weight = Float(inputWeight.text!)
            let moles = Float(weight!/goldInfo.1)
            sampleWeight.text = String(moles)
            
            print ("Gold works")
        case silver:
            //here I use tuple referencing with names instead of numbers
           molarMass.text = String(silverInfo.atomicMass)
           atomicNumber.text = String(silverInfo.atomicNumber)
           let weight = Float(inputWeight.text!)
           let moles = Float(weight!/silverInfo.atomicMass)
           sampleWeight.text = String(moles)
           
           print ("Silver works")
        default:
            break

        }
        
        
    }

}
