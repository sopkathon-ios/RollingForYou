//
//  MypageVC.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MypageVC: UIViewController {
    
    var categories = ["2019년 4월 - 5월", "2019년 2월 - 3월", "2019년 1월", "2018년 12월", "2018년 10월 - 11월"]

    
  @IBOutlet var imgBtn: UIButton! {
    didSet {
      imgBtn.layer.cornerRadius = 0.5 * imgBtn.bounds.size.height
      imgBtn.clipsToBounds = true
    }
  }
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var myMemoriesLabel: UILabel!
    @IBOutlet var ourMemoriesLabel: UILabel!
    @IBOutlet var myMemoriesBtn: UIButton! {
        didSet {
            myMemoriesBtn.layer.cornerRadius = 0.2 * myMemoriesBtn.bounds.size.height
            myMemoriesBtn.clipsToBounds = true
        }
    }
    @IBOutlet var ourMemoriesBtn: UIButton! {
        didSet {
            ourMemoriesBtn.layer.cornerRadius = 0.2 * ourMemoriesBtn.bounds.size.height
            ourMemoriesBtn.layer.borderWidth = 1
          ourMemoriesBtn.layer.borderColor = UIColor.init(red: 110/255, green: 101/255, blue: 93/255, alpha: 1).cgColor
            ourMemoriesBtn.clipsToBounds = true
        }
    }
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
      self.navigationController?.title = "내 페이퍼"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func clickImgBtn(_ sender: Any) {
    }
    
    @IBAction func clickMyMemoriesAction(_ sender: Any) {
    }
    
    @IBAction func clickOurMemoriesAction(_ sender: Any) {
    }
}

extension MypageVC : UITableViewDelegate {}

extension MypageVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryRow") as! CategoryRow
        return cell
    }
}
