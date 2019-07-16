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
        
        let symbolConf = UIImage.SymbolConfiguration(pointSize: 34.0, weight: .heavy)
        
        imageView.image = tornado
        imageView.preferredSymbolConfiguration = symbolConf
        
        button.setImage(UIImage(systemName: "snow"), for: .normal)
        button.setPreferredSymbolConfiguration(symbolConf, forImageIn: .normal)
        
        let attributedString = NSMutableAttributedString(string: "Dans Twister, ils aiment beaucoup les ")
        let tornadoAttachment = NSTextAttachment(image: tornado)
        let tornadoAttributedString = NSAttributedString(attachment: tornadoAttachment)
        attributedString.append(tornadoAttributedString)
        label.attributedText = attributedString
    }


}

