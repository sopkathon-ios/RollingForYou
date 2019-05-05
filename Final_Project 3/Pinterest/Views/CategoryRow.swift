//
//  CatagoryRow.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
  
  @IBOutlet weak var collectionView: UICollectionView!

  
 //ㅇㅇㅇㅇ
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension CategoryRow : UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 12
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MypageCollectionViewCell", for: indexPath) as! MypageCollectionViewCell
    return cell
  }
  
}

extension CategoryRow : UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let itemsPerRow:CGFloat = 4
    let hardCodedPadding:CGFloat = 5
    let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
    let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
    return CGSize(width: itemWidth, height: itemHeight)
  }
  
}
extension CategoryRow: UICollectionViewDelegate {

  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
//    let storyboard = UIStoryboard(name: "Mypage", bundle: nil)
//    let dvc = storyboard.instantiateViewController(withIdentifier: "MyListDetailVC") as! MyListDetailVC
//    let rootVC = storyboard.instantiateViewController(withIdentifier: "MypageVC") as! MypageVC
//    let rootVC = UINavigationController.
//
//    rootVC.navigationController?.pushViewController(dvc, animated: true)
  }
}
