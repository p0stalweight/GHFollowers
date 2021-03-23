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
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            
            switch result {
            
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "OK")
            }
        }
    }

    
}
