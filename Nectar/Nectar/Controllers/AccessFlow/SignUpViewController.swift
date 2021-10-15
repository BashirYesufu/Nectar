//
//  SignUpViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 14/10/2021.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - ImageView... Creating the logo
    lazy var logo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 47.84, height: 55.64)
        imageView.image = UIImage(named: "Orange Logo")
        return imageView
    }()
    
    // MARK: - Label... Creating the header
    lazy var signUpHeaderLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Sign Up"
        return label
    }()
    
    // MARK: - Label... Creating the signup credentials label
    lazy var signUpDescriptionLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Enter your credentials to continue"
        return label
    }()
    
    // MARK: - Label... Creating the email label
    lazy var usernameLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Username"
        return label
    }()
    
    // MARK: - TextField... Creating the email textField
    lazy var usernameTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Enter your username"
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    // MARK: - Label... Creating the email label
    lazy var emailLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Email"
        return label
    }()
    
    // MARK: - TextField... Creating the email textField
    lazy var emailTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Enter your email"
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    // MARK: - Label... Creating the password label
    lazy var passwordLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Password"
        return label
    }()
    
    // MARK: - TextField... Creating the password textField
    lazy var passwordTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Enter your password"
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    // MARK: - Label... Creating the continuation label
    lazy var continuationLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "By continuing, you agree to our"
        label.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        label.textColor = AppColors.grey.color
        return label
    }()
    
    // MARK: - Button... Creating the terms of service button
    lazy var termsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Terms of Service", for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(AppColors.green.color, for: .normal)
        return button
    }()

    // MARK: - Stack... Creating the top stack
    lazy var topStack: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [continuationLabel, termsButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 5
        stack.axis = .horizontal
        return stack
    }()
    
    // MARK: - Label... Creating the "and" continuation label
    lazy var andLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "and"
        label.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        label.textColor = AppColors.grey.color
        return label
    }()
    
    // MARK: - Button... Creating the privacy policy button
    lazy var privacyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Privacy Policy", for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(AppColors.green.color, for: .normal)
        return button
    }()

    // MARK: - Stack... Creating the top stack
    lazy var bottomStack: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [andLabel, privacyButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 5
        stack.axis = .horizontal
        return stack
    }()
    
    // MARK: - Button... Creating the sign up button
    lazy var signUpButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = AppColors.green.color
        return button
    }()
    
    // MARK: - Label... Creating the existing account label
    lazy var existingAcountLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Already have an account?"
        label.textColor = .black
        return label
    }()
    
    // MARK: - Button... Creating the signin button
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 14)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(AppColors.green.color, for: .normal)
        button.addTarget(self, action: #selector(goToSignInScreen), for: .touchUpInside)
        return button
    }()
    @objc func goToSignInScreen() {
        let loginScreen = LoginViewController()
        navigationController?.pushViewController(loginScreen, animated: true)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: - Stack... Creating the stack
    lazy var signInStack: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [existingAcountLabel, signInButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 5
        stack.axis = .horizontal
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
    }

    // MARK: - Method... Adding subviews
    private func addSubviews() {
        view.backgroundColor = AppColors.white.color
        view.addSubview(logo)
        view.addSubview(signUpHeaderLabel)
        view.addSubview(signUpDescriptionLabel)
        view.addSubview(usernameLabel)
        view.addSubview(usernameTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(topStack)
        view.addSubview(bottomStack)
        view.addSubview(signUpButton)
        view.addSubview(signInStack)
    }
    
    // MARK: - Method... Adding constraints
    private func addConstraints() {
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 77.5),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpHeaderLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 100),
            signUpHeaderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            signUpDescriptionLabel.topAnchor.constraint(equalTo: signUpHeaderLabel.bottomAnchor, constant: 15),
            signUpDescriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            usernameLabel.topAnchor.constraint(equalTo: signUpDescriptionLabel.bottomAnchor, constant: 40),
            usernameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            usernameTextField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 10),
            usernameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            usernameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            emailLabel.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 30),
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            topStack.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            topStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            bottomStack.topAnchor.constraint(equalTo: topStack.bottomAnchor, constant: 2),
            bottomStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            signUpButton.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant: 30),
            signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            signInStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInStack.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 20)
        ])
    }
}
