//
//  ViewController.swift
//  PhotoTutorial
//
//  Created by 김광록 on 2022/04/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var changeProfileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 모서리를 동그랗게 만드는 방법
        self.profileImage.layer.cornerRadius = profileImage.frame.height / 2
        self.changeProfileBtn.layer.cornerRadius = 10
        
        // button click action을 설정
        self.changeProfileBtn.addTarget(self, action: #selector(onchangeProfileBtnClicked), for: .touchUpInside)
        // for 파라미터의 매개변수 .touchUpInside는 버튼 안쪽이 터치 되었을 때를 말함
    }
    
    @objc fileprivate func onchangeProfileBtnClicked() {
        print("ViewController - onchangeProfileBtnClicked() is called")
    }
}

 
