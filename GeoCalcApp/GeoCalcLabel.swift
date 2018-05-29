//
//  GeoCalcLabel.swift
//  GeoCalcApp
//
//  Created by Brian on 5/28/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit

class GeoCalcLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        self.textColor = FOREGROUND_COLOR2
    }

}
