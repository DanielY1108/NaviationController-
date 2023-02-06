//
//  AlarmViewController.swift
//  test natvo
//
//  Created by JINSEOK on 2023/02/06.
//

import UIKit

class AlarmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        navigationItem.title = "알람"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

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
