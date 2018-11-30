//
//  HairlineView.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/29/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class HairlineView: UIView {
    
    override func awakeFromNib() {
        guard let backgroundColor = self.backgroundColor?.cgColor else { return }
        self.layer.borderColor = backgroundColor
        self.layer.borderWidth = (1.0 / UIScreen.main.scale) / 2;
        self.backgroundColor = UIColor.clear
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
