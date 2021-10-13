//
//  MobileNumberViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 12/10/2021.
//

import UIKit

class MobileNumberViewController: UIViewController {

    lazy var backButton: UIButton = {
        let button = UIButton.makeBackButton()
        button.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        return button
    }()
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backButton)
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 56.83).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        
    }
  
}
