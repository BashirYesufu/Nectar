//
//  ViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 10/10/2021.
//

import UIKit

class onBoardingViewController: UIViewController {
    
    lazy var background: UIImageView = {
        var imageView = UIImageView()
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "OnBoarding")
        imageView.center = view.center
        return imageView
    }()

    lazy var getStartedButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.setTitle("Get Started", for: .normal)
        button.backgroundColor = AppColors.green.color
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        constraintViews()
    }
    
    // MARK: - Function...Adding subviews
    func addSubviews() {
        view.addSubview(background)
        view.addSubview(getStartedButton)
    }
    
    // MARK: - Function...Adding constraints to subviews
    func constraintViews() {
        NSLayoutConstraint.activate([
            getStartedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.84),
            getStartedButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30.5),
            getStartedButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30.5),
        ])
   }
}

