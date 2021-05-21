//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ahuose Eki on 5/18/21.
//

import UIKit


class ViewController: UIViewController {
    

    @IBOutlet weak var BillAmount: UITextField!
    @IBOutlet weak var TipPercentage: UITextField!
    @IBOutlet weak var CalculateButton: UIButton!
    
    @IBOutlet weak var TotalBill: UILabel!
    @IBOutlet weak var TipAmount: UILabel!
    
    @IBAction func CalculateTip(_ sender: Any) {
        //To calculate the tip
        let tipAmount:Double = (Double (TipPercentage.text!)! / 100) * Double (BillAmount.text!)!
        TipAmount.text = String (format: "$%.02f", tipAmount)
        
        //To calculate the total bill
        let BillAmount:Double = tipAmount + Double (BillAmount.text!)!
        
        TotalBill.text = String (format: "$%.02f", BillAmount)
        
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
              
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}



