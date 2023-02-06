//
//  WorldTimeViewController.swift
//  test natvo
//
//  Created by JINSEOK on 2023/02/06.
//

import UIKit

class WorldTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        navigationItem.title = "세계 시계"
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
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
