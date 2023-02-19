//
//  ConvertedView.swift
//  CurrencyConverter
//
//  Created by user232612 on 2/18/23.
//

import UIKit

class ConvertedView: UIViewController {
    
    var values : Dictionary<String, Double> = [:]

    @IBOutlet weak var usd: UILabel!
    
    @IBOutlet weak var euro: UILabel!
    
    @IBOutlet weak var real: UILabel!
    
    @IBOutlet weak var baht: UILabel!
    
    @IBOutlet weak var yuan: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let labels = [ "usd" : usd,
                       "euro": euro,
                       "real": real,
                       "baht": baht,
                       "yuan": yuan]
        let currencySymbols = ["usd": "🇺🇸 Amount in USD: $",
                               "euro": "🇪🇺 Euro: €",
                               "real": "🇧🇷 Real: R$",
                               "baht": "🇹🇭 Baht: ฿",
                               "yuan": "🇨🇳 Yuan: ¥"
        ]
        
        for (key, value) in values {
            if (value > -1) {
                labels[key]!!.isHidden = false
                labels[key]!!.text = String(format: "\(currencySymbols[key]!)%.02f", value)
            } else {
                labels[key]!!.isHidden = true
                
            }
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
