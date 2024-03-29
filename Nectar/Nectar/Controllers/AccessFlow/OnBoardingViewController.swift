//
//  ViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 10/10/2021.
//

import UIKit

class OnBoardingViewController: UIViewController {

    // MARK: - ImageView... Creating the logo
    lazy var logo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 48.47, height: 56.36)
        imageView.image = UIImage(named: "Nectar Logo")
        return imageView
    }()
    
    // MARK: - ImageView... Creating the background
    lazy var background: UIImageView = {
        var imageView = UIImageView()
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "OnBoarding")
        imageView.center = view.center
        return imageView
    }()

    // MARK: - Label... Creating the welcome label
    lazy var welcomeLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome \nto our store"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 48)
        label.textColor = AppColors.white.color
        return label
    }()
    
    // MARK: - Label... Creating the welcome description label
    lazy var descriptionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Get your groceries in as fast as one hour"
        label.font = UIFont(name: AppFonts.gilroyMedium.font, size: 16)
        label.textColor = AppColors.ash.color
        return label
    }()

    // MARK: - Button... Creating the get started button
    lazy var getStartedButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.setTitle("Get Started", for: .normal)
        button.addTarget(self, action: #selector(goToSocialSignUpScreen), for: .touchUpInside)
        return button
    }()
    
    @objc func goToSocialSignUpScreen() {
        let viewController = SocialSignUpViewController()
        navigationController?.pushViewController(viewController, animated: true)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        constraintViews()
    }
    
    // MARK: - Function...Adding subviews
    func addSubviews() {
        view.backgroundColor = AppColors.white.color
        view.addSubview(background)
        view.addSubview(getStartedButton)
        view.addSubview(welcomeLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(logo)
    }
    
    // MARK: - Function...Adding constraints to subviews
    func constraintViews() {
        NSLayoutConstraint.activate([
            getStartedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.84),
            getStartedButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30.5),
            getStartedButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30.5),
            descriptionLabel.bottomAnchor.constraint(equalTo: getStartedButton.topAnchor, constant: -40.88),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -19),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.bottomAnchor.constraint(equalTo: welcomeLabel.topAnchor, constant: -35.66),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
   }
}

