//
//  MakePaperViewController.swift
//  Pinterest
//
//  Created by admin on 06/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MakePaperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeButton(_ sender: Any) {
      
      let storyboard = UIStoryboard.init(name: "Mypage", bundle: nil)
      
      guard let dvc = storyboard.instantiateViewController(withIdentifier: "MypageVC") as? MypageVC else{
        return
      }
      
      navigationController?.pushViewController(dvc, animated: false)
        
    }
    
    

}
