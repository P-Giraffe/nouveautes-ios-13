//
//  ViewController.swift
//  SFSymbols_demo
//
//  Created by Maxime Britto on 16/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tornado = UIImage(systemName: "tornado") else { return }
        imageView.image = tornado
        button.setImage(UIImage(systemName: "snow"), for: .normal)
    }


}

