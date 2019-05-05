/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import AVFoundation

class PhotoStreamViewController: UICollectionViewController {
    
    
  
  var photos = Photo.allPhotos()
  
  override var preferredStatusBarStyle : UIStatusBarStyle {
    return UIStatusBarStyle.lightContent
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    //imagePicker.delegate = self
    
    
    let image: UIImage = UIImage(named: "logo.png")!
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 30))
    imageView.contentMode = .scaleAspectFit
    imageView.image = image
    self.navigationItem.titleView = imageView
    
    if let patternImage = UIImage(named: "Pattern") {
      view.backgroundColor = UIColor.white
    }
    collectionView?.backgroundColor = UIColor.clear
    collectionView?.contentInset = UIEdgeInsets(top: 23, left: 10, bottom: 10, right: 10)
    // Set the PinterestLayout delegate
    if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
      layout.delegate = self
    }
    
  }
    
    @IBAction func tabBarButton(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Mypage", bundle: nil)
        guard let dvc = storyboard.instantiateViewController(withIdentifier: "MypageVC") as? MypageVC else{
            return
        }
        navigationController?.pushViewController(dvc, animated: false)
    }

    
    @IBAction func tabAddButton(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Storyboard", bundle: nil)
        
        guard let dvc = storyboard.instantiateViewController(withIdentifier: "MakePaperViewController") as? MakePaperViewController else{
            return
        }
        
        navigationController?.pushViewController(dvc, animated: false)
    }
}


extension PhotoStreamViewController {
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return photos.count
  }
    
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // 각 페이퍼 클릭했을 때 이동하는거 짜야됨
    
    guard let dvc = storyboard?.instantiateViewController(withIdentifier: "WriteViewController") as? WriteViewController else{
        return
    }
    navigationController?.pushViewController(dvc, animated: true)
    
    }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    var reuseIdentifier = (indexPath.item == 1 ) ? "SecondCell" : "AnnotatedPhotoCell"
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    if let annotateCell = cell as? AnnotatedPhotoCell {
      annotateCell.photo = photos[indexPath.item]
    }
    
    
    return cell
  }
  
}

//MARK: - PINTEREST LAYOUT DELEGATE
extension PhotoStreamViewController : PinterestLayoutDelegate {
  
  // 1. Returns the photo height
  func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    return photos[indexPath.item].image.size.height
  }

}
