//
//  DetailsViewController.swift
//  Segue_demos
//
//  Created by Maxime Britto on 30/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var textToDisplay:String? {
        didSet {
            updateDisplay()
        }
    }
    @IBOutlet weak var ui_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDisplay()
    }
    
    private func updateDisplay() {
        ui_label?.text = textToDisplay
    }
}
