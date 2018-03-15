//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Nayan Jariwala on 16/03/18.
//  Copyright © 2018 Nayan Jariwala. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
