//
//  SocialsSignUpViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 12/10/2021.
//

import UIKit

class SocialSignUpViewController: UIViewController {
    lazy var googleButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.setTitle("Continue with Google", for: .normal)
        button.backgroundColor = AppColors.green.color
        return button
    }()
    lazy var facebookButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.setTitle("Continue with Facebook", for: .normal)
        button.backgroundColor = AppColors.green.color
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Function...Adding subviews
    func addSubviews() {
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
    }
    
    // MARK: - Function...Adding constraints to subviews
    func constraintViews() {
        NSLayoutConstraint.activate([
            facebookButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.84),
            facebookButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30.5),
            facebookButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30.5),
            googleButton.bottomAnchor.constraint(equalTo: facebookButton.topAnchor, constant: -20),
            googleButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30.5),
            googleButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30.5)
        ])
   }
}
