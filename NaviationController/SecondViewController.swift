//
//  SecondViewController.swift
//  test natvo
//
//  Created by JINSEOK on 2023/02/07.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: 400, width: 150, height: 50),
                           primaryAction: UIAction(handler: { _ in
            // 서브스크립트로 접근하기
            let fisrtIndex = self.navigationController!.viewControllers.startIndex
            let firstVC = self.navigationController?.viewControllers[fisrtIndex] as! FirstViewController
            
            //
            firstVC.label.text = "여기는 SecondVC이다. 오바!"
            self.navigationController?.popViewController(animated: true)
        }))
        btn.setTitle("전달하고 뒤로가기", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.addSubview(button)
        
        self.navigationItem.title = "SecondVC"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
