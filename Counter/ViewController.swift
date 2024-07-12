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
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var historyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        counterValue += 1
        counterLabel.text = "Значение счётчика: \(counterValue)"
    }
    
    @IBAction func incrementButtonTapped(_ sender: Any) {
        counterValue += 1
        updateCounterLabel()
        addHistoryEntry(change: "+1")
    }
    
    @IBAction func decrementButtonTapped(_ sender: Any) {
        if counterValue > 0 {
            counterValue -= 1
            updateCounterLabel()
            addHistoryEntry(change: "-1")
        } else {
            addHistoryEntry(change: "попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        counterValue = 0
        updateCounterLabel()
        addHistoryEntry(change: "значение сброшено")
    }
    
    func updateCounterLabel() {
            counterLabel.text = "Значение счётчика: \(counterValue)"
    }
    
    func addHistoryEntry(change: String) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            let date = dateFormatter.string(from: Date())
            historyTextView.text += "\n[\(date)]: \(change)"
            let range = NSRange(location: historyTextView.text.count - 1, length: 1)
            historyTextView.scrollRangeToVisible(range)
    }
}

