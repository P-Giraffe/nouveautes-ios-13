//
//  ViewController.swift
//  DarkMode
//
//  Created by Maxime Britto on 11/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import UIKit

#if !targetEnvironment(macCatalyst)
import ARKit
#endif

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.overrideUserInterfaceStyle = .dark
        if self.traitCollection.userInterfaceStyle == .dark {
            
        } else {
            
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            
        }
    }


}

