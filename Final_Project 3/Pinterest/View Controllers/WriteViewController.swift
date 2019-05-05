//
//  WriteViewController.swift
//  Pinterest
//
//  Created by admin on 06/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {
    
    @IBOutlet weak var comment1: UIView!
    
    @IBOutlet weak var comment2: UIView!
    @IBOutlet weak var writingComment: UIView!
    
    @IBOutlet weak var profile1: UIView!
    
    @IBOutlet weak var profile2: UIView!
    @IBOutlet weak var profile3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        comment1.layer.cornerRadius = 21;
        comment1.layer.borderWidth = 0.5;
        comment1.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;
        
        comment2.layer.cornerRadius = 21;
        comment2.layer.borderWidth = 0.5;
        comment2.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;
        
    writingComment.layer.cornerRadius = 21;
    writingComment.layer.borderWidth = 0.5;
    writingComment.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;
        
        
        profile1.layer.cornerRadius = 18;
        profile1.layer.borderWidth = 0.5;
        profile1.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;
        
        profile2.layer.cornerRadius = 18;
        profile2.layer.borderWidth = 0.5;
        profile2.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;
        
        profile3.layer.cornerRadius = 18;
        profile3.layer.borderWidth = 0.5;
        profile3.layer.borderColor = UIColor(red:206/255, green:206/255, blue:206/255, alpha: 1).cgColor;


      
        // Do any additional setup after loading the view.
    }
    


}
