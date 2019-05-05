//
//  MypageVC.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class MypageVC: UIViewController {
    
    var categories = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]

    
    @IBOutlet var imgBtn: UIButton! {
        didSet {
            imgBtn.layer.cornerRadius = 0.5 * imgBtn.bounds.size.width
            imgBtn.clipsToBounds = true
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var myMemoriesLabel: UILabel!
    @IBOutlet var ourMemoriesLabel: UILabel!
    @IBOutlet var myMemoriesBtn: UIButton!
    @IBOutlet var ourMemoriesBtn: UIButton!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
