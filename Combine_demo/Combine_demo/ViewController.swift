//
//  ViewController.swift
//  Combine_demo
//
//  Created by Maxime Britto on 18/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @Published var searchValue:String = ""
    
    @IBOutlet weak var ui_statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        $searchValue
            .map({ (newValue) -> String in
            return newValue.capitalized
        })
            .map({ (newValueCapitalized) -> Int in
                return newValueCapitalized.count
            })
            .sink { (newSearchValue) in
            self.ui_statusLabel.text = #"Recherche de "\#(newSearchValue)" ..."#
        }
    }

    @IBAction func searchInputValueChanged(_ sender: UITextField) {
        searchValue = sender.text ?? ""
    }
    
}

