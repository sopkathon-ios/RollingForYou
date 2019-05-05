//
//  MypageCollectionViewCell.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MypageCollectionViewCell: UICollectionViewCell {
    
  @IBOutlet var imgView: UIImageView! {
    didSet {
      imgView.layer.cornerRadius = 0.05 * imgView.bounds.size.height
      imgView.clipsToBounds = true
    }
  }
  @IBOutlet var titleLabel: UILabel!
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var countLabel: UILabel!
  
}
