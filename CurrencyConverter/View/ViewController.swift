//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user232612 on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    var converterLogic = ConverterLogic()

    @IBOutlet weak var usdInput: UITextField!
    
    @IBOutlet weak var errorMsg: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    enum AmountError: Error {
        case negativeAmount
        case notAnInt
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, &converterLogic.euroBool)
    }
    
    @IBAction func realSwitch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, &converterLogic.realBool)
    }
    
    
    @IBAction func bahtSwitch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, &converterLogic.bahtBool)
    }
    @IBAction func yuanSwitch(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, &converterLogic.yuanBool)
    }
    
    @IBAction func doConversion(_ sender: UIButton) {
        errorMsg.text = "" // Reset error message
        do {
            let usd = try
            isValid()
        } catch {
            errorMsg.text = "Please enter a positive integer to convert."
        }
        
    }
    
    func isValid() throws -> Int {
        guard let usd = Int(usdInput.text!) else {
            throw AmountError.notAnInt
        }
        guard usd > -1 else {
            throw AmountError.negativeAmount
        }
        return usd
    }
    
}

