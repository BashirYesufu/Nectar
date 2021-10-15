//
//  SocialsSignUpViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 12/10/2021.
//

import UIKit

class SocialSignUpViewController: UIViewController {
    
    // MARK: - ImageView... Creating the grocery image view
    lazy var groceryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 4)
        imageView.image = UIImage(named: "Nectar Groceries")
        return imageView
    }()
    
    // MARK: - Label... Creating the alternative connection label
    lazy var connectLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or connect with social media"
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 14)
        label.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        return label
    }()
    
    // MARK: - TextField... Creating the number textField
    lazy var numberTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Mobile number"
        textField.addTarget(self, action: #selector(goToMobileNumberScreen), for: .editingDidBegin)
        return textField
    }()
    
    @objc func goToMobileNumberScreen( _ textField: UITextField) {
        let viewController = MobileNumberViewController()
        navigationController?.pushViewController(viewController, animated: true)
        navigationController?.setNavigationBarHidden(true, animated: false)
        numberTextField.resignFirstResponder()
        viewController.numberTextField.becomeFirstResponder()
    }
    
    // MARK: - Label... Creating the advert label
    lazy var advertLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Get your groceries \nwith nectar"
        label.numberOfLines = 2
        return label
    }()
    
    // MARK: - Button... Creating the google button
    lazy var googleButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.setTitle("Continue with Google", for: .normal)
        button.backgroundColor = AppColors.lightBlue.color
        return button
    }()
    
    // MARK: - Button... Creating the facebook button
    lazy var facebookButton: UIButton = {
        let button = UIButton.makeCorneredButton()
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
        view.addSubview(numberTextField)
        view.addSubview(advertLabel)
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
            numberTextField.bottomAnchor.constraint(equalTo: connectLabel.topAnchor, constant: -40),
            numberTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            numberTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            advertLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            advertLabel.bottomAnchor.constraint(equalTo: numberTextField.topAnchor, constant: -30.61)
        ])
   }
}
