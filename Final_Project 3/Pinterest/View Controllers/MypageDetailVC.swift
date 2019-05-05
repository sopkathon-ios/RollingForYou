//
//  MypageDetailVC.swift
//  Pinterest
//
//  Created by 박소현 on 06/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MypageDetailVC: UIViewController {

    
    @IBOutlet var popUpView: UIView! {
        didSet {
            popUpView.layer.cornerRadius = 0.1 * popUpView.bounds.size.height
            popUpView.clipsToBounds = true
            
        }
    }
    @IBOutlet var titleView: UIView! {
        didSet {
            titleView.layer.cornerRadius = 0.5 * titleView.bounds.size.height
            titleView.layer.borderWidth = 1
            titleView.layer.borderColor = UIColor.init(red: 110/255, green: 101/255, blue: 93/255, alpha: 1).cgColor
            titleView.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView1: UIImageView! {
        didSet {
            imgView1.layer.cornerRadius = 0.5 * imgView1.bounds.size.height
            imgView1.clipsToBounds = true
            
        }
    }
        
    @IBOutlet var imgView2: UIImageView! {
        didSet {
            imgView2.layer.cornerRadius = 0.5 * imgView2.bounds.size.height
            imgView2.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView3: UIImageView! {
        didSet {
            imgView3.layer.cornerRadius = 0.5 * imgView3.bounds.size.height
            imgView3.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView4: UIImageView! {
        didSet {
            imgView4.layer.cornerRadius = 0.5 * imgView4.bounds.size.height
            imgView4.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView5: UIImageView! {
        didSet {
            imgView5.layer.cornerRadius = 0.5 * imgView5.bounds.size.height
            imgView5.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView6: UIImageView! {
        didSet {
            imgView6.layer.cornerRadius = 0.5 * imgView6.bounds.size.height
            imgView6.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView7: UIImageView! {
        didSet {
            imgView7.layer.cornerRadius = 0.5 * imgView7.bounds.size.height
            imgView7.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView8: UIImageView! {
        didSet {
            imgView8.layer.cornerRadius = 0.5 * imgView8.bounds.size.height
            imgView8.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgView9: UIImageView! {
        didSet {
            imgView9.layer.cornerRadius = 0.5 * imgView9.bounds.size.height
            imgView9.clipsToBounds = true
            
        }
    }
    
    @IBOutlet var imgBtn: UIButton! {
        didSet {
            imgBtn.layer.cornerRadius = 0.5 * imgBtn.bounds.size.width
            imgBtn.clipsToBounds = true
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(popUpView)
        
        view.addSubview(titleView)
        self.navigationController?.isNavigationBarHidden = false
        popUpView.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false
    }
    


    @IBAction func clickBtn(_ sender: Any) {
        print("click")
        
        if popUpView.isHidden == true {
            popUpView.isHidden = false
        } else {
            popUpView.isHidden = true
        }
    }
    
}
