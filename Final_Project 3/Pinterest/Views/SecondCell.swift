//
//  SecondCell.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class SecondCell: UICollectionViewCell {
  
  @IBOutlet var imgView: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    imgView.layer.cornerRadius = 6
    imgView.layer.masksToBounds = true
  }
  
  
}
