//
//  CatagoryRow.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit
import Foundation

class CategoryRow: UITableViewCell {
  
  @IBOutlet weak var collectionView: UICollectionView!

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
    return 6
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
  
  /*
   didSelectItemAt 은 셀을 선택했을때 어떤 동작을 할 지 설정할 수 있습니다.
   여기서는 셀을 선택하면 그에 해당하는 MusicDetailVC 로 화면전환을 합니다.
   */
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    print("click")
    let storyboard = UIStoryboard(name: "Mypage", bundle: nil)
    let dvc = storyboard.instantiateViewController(withIdentifier: "MypageDetailVC") as! MypageDetailVC
 UIApplication.topViewcontroller()?.navigationController?.pushViewController(dvc, animated: true)
    
  }
}
extension UIApplication {
  class func topViewcontroller(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    if let nav = base as? UINavigationController {
      return topViewcontroller(base: nav.visibleViewController)
    }
    return base
  }
}
