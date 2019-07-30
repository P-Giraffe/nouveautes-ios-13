//
//  ViewController.swift
//  Segue_demos
//
//  Created by Maxime Britto on 30/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var inputText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func inputTextChanged(_ sender: UITextField) {
        inputText = sender.text ?? ""
    }
    
    @IBAction func button2Touched() {
        guard let destinationVC = storyboard?.instantiateViewController(identifier: "DetailsViewController", creator: { coder in
            return DetailsViewController(coder: coder, text: self.inputText)
        }) else { return }

        present(destinationVC, animated: true, completion: nil)
    }
    
    @IBSegueAction
    func prepareDetailsViewController(coder:NSCoder) -> DetailsViewController? {
        return DetailsViewController(coder: coder, text: inputText)
    }
}

