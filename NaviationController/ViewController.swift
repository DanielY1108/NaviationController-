//
//  ViewController.swift
//  NaviationController
//
//  Created by JINSEOK on 2023/02/07.
//

import UIKit

class ViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        title = "AAA"
    }


}

extension UINavigationController {
    func setupBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .gray
        
        appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 18.0),
                                          .foregroundColor: UIColor.orange]
        appearance.largeTitleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 35.0),
                                               .foregroundColor: UIColor.orange]

        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.isTranslucent = false
        navigationBar.tintColor = .red
        navigationBar.prefersLargeTitles = true
    }
}
    
  
