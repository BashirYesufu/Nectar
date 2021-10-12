//
//  SocialsSignUpViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 12/10/2021.
//

import UIKit

class SocialSignUpViewController: UIViewController {
    lazy var groceryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 4)
        imageView.image = UIImage(named: "Nectar Groceries")
        return imageView
    }()
    
    lazy var connectLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or connect with social media"
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 14)
        label.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        return label
    }()
    
    lazy var numberTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Phone number"
        return textField
    }()
    
    lazy var stroke: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.backgroundColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        return lineView
    }()
    
    lazy var googleButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.setTitle("Continue with Google", for: .normal)
        button.backgroundColor = AppColors.lightBlue.color
        return button
    }()
    lazy var facebookButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.setTitle("Continue with Facebook", for: .normal)
        button.backgroundColor = AppColors.darkBlue.color
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        constraintViews()
    }
    // MARK: - Function...Adding subviews
    func addSubviews() {
        view.backgroundColor = AppColors.white.color
        view.addSubview(groceryImage)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        view.addSubview(connectLabel)
        view.addSubview(stroke)
        view.addSubview(numberTextField)
    }
    
    // MARK: - Function...Adding constraints to subviews
    func constraintViews() {
        NSLayoutConstraint.activate([
            facebookButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.84),
            facebookButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            facebookButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            googleButton.bottomAnchor.constraint(equalTo: facebookButton.topAnchor, constant: -20),
            googleButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            googleButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            connectLabel.bottomAnchor.constraint(equalTo: googleButton.topAnchor, constant: -37.8),
            connectLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stroke.bottomAnchor.constraint(equalTo: connectLabel.topAnchor, constant: -40),
            stroke.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            stroke.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            numberTextField.bottomAnchor.constraint(equalTo: stroke.topAnchor),
            numberTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            numberTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15)
        ])
   }
}
