//
//  MakePaperViewController.swift
//  Pinterest
//
//  Created by admin on 06/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MakePaperViewController: UIViewController {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeButton(_ sender: Any) {

        
        self.navigationController?.popViewController(animated: true)
//      let storyboard = UIStoryboard.init(name: "Mypage", bundle: nil)
//
//      guard let dvc = storyboard.instantiateViewController(withIdentifier: "MypageVC") as? MypageVC else{
//        return
//      }
//
//      navigationController?.pushViewController(dvc, animated: false)
        
    }
    
    @IBAction func openGalleryButton(_ sender: Any) {
        
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            
            //imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in
            
        })
        
        //imageView.image = image
    }
    

}
