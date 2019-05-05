//
//  CustomImgView.swift
//  Pinterest
//
//  Created by 안재은 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class CustomImgView: UIImageView {
  required public init?(coder aDecoder: NSCoder) {
    
    super.init(coder: aDecoder)
    
    
    // 이 아래에 CustomButton class 가 가질 특성에 대해 명시하면 됩니다.
    /*
     layer.cornerRadius 는 UIButton Class 가 갖는 layer 의 cornerRadius 즉 모서리를 얼마나 둥글게 만들거냐는 말입니다.
     꼭지점이 만들어지는 선분 2개를 동시에 접하는 원의 반지름의 크기라고 보시면 됩니다.
     
     frame.height 는 상위뷰를 기준으로 했을 때 몇 포인트만큼의 높이입니다.
     말이 너무 어려웠죠? 스토리보드를 기준으로 했을 때 객체가 가진 높이값을 의미합니다!
     */
    layer.cornerRadius = frame.height/2
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
  }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
