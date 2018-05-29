//
//  GeoCalcButton.swift
//  GeoCalcApp
//
//  Created by Brian on 5/28/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit

class GeoCalcButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        self.backgroundColor = BACKGROUND_COLOR2
        self.tintColor = UIColor.blue
        self.layer.borderWidth = 1.0
        //self.layer.borderColor = BACKGROUND_COLOR1
        self.layer.cornerRadius = 5.0
    }

}
