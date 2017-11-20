//
//  Colors.swift
//  AssessmentApp
//
//  Created by Benjamin Walton on 11/20/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import UIKit

class Colors {
    var gradientLayer: CAGradientLayer!
    let colorTop = UIColor.splashTop.cgColor
    let colorBottom = UIColor.splashBottom.cgColor
    
    init() {
        self.gradientLayer = CAGradientLayer()
        self.gradientLayer.colors = [colorTop, colorBottom]
        self.gradientLayer.locations = [0.0, 1.0]
    }
}
