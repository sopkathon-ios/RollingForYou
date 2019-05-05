//
//  GalleryViewController.swift
//  Pinterest
//
//  Created by admin on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
  
    
    private lazy var withInfoVC1: AlbumViewController = {
        var viewController = UIStoryboard(name: "GalleryViewController", bundle: nil).instantiateViewController(withIdentifier: "googleMapViewController") as! AlbumViewController
        self.addChildViewController(viewController)
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  

}
