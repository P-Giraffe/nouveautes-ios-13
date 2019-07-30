//
//  DetailsViewController.swift
//  Segue_demos
//
//  Created by Maxime Britto on 30/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    let textToDisplay:String
    @IBOutlet weak var ui_label: UILabel!
    
    init?(coder:NSCoder, text:String) {
        self.textToDisplay = text
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.textToDisplay = ""
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDisplay()
    }
    
    private func updateDisplay() {
        ui_label?.text = textToDisplay
    }
}
