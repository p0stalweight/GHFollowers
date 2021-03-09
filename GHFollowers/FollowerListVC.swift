//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by John Postlewaite on 3/8/21.
//

import UIKit

class FollowerListVC: UIViewController {
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
