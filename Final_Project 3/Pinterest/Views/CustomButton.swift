//
//  CustomButton.swift
//  Pinterest
//
//  Created by 안재은 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
  required public init?(coder aDecoder: NSCoder) {
    
    super.init(coder: aDecoder)
   
    layer.cornerRadius = frame.height/2
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
  }
}
