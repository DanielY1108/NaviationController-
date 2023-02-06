//
//  ViewController.swift
//  NaviationController
//
//  Created by JINSEOK on 2023/02/07.
//

import UIKit

class FirstViewController: UIViewController {
    
    lazy var label: UILabel = {
        let lable = UILabel(frame: CGRect(x: view.frame.width/2 - 125, y: 300, width: 250, height: 50))
        lable.font = .systemFont(ofSize: 20, weight: .bold)
        return lable
    }()
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: 400, width: 150, height: 50),
                           primaryAction: UIAction(handler: { _ in
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        }))
        btn.setTitle("NextVC", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.view.addSubview(label)
        self.view.addSubview(button)
        
        // 네이게이션바 타이틀 설정
        self.navigationItem.title = "FirstVC"
    }
}


