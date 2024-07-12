//
//  ViewController.swift
//  Counter
//
//  Created by Kirill on 12.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var counterValue = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: Any) {
        counterValue += 1
        counterLabel.text = "Значение счётчика: \(counterValue)"        
    }
}

