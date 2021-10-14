//
//  LoginViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 14/10/2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - ImageView... Creating the logo
    lazy var logo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 47.84, height: 55.64)
        imageView.image = UIImage(named: "Orange Logo")
        return imageView
    }()
    
    // MARK: - Label... Creating the header
    lazy var loginHeaderLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Log In"
        return label
    }()
    
    // MARK: - Label... Creating the login description label
    lazy var loginDescriptionLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Enter your email and password"
        return label
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
    
    // MARK: - Button... Creating the forgot password button
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot Password?", for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    // MARK: - Button... Creating the login button
    lazy var loginButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = AppColors.green.color
        return button
    }()
    
    // MARK: - Label... Creating the password label
    lazy var noAccountLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Don't have an account?"
        label.textColor = .black
        return label
    }()
    
    // MARK: - Button... Creating the signup button
    lazy var signupButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 14)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(AppColors.green.color, for: .normal)
        button.addTarget(self, action: #selector(goToSignUpScreen), for: .touchUpInside)
        return button
    }()
    
    @objc func goToSignUpScreen() {
        let signUpScreen = SignUpViewController()
        navigationController?.pushViewController(signUpScreen, animated: true)
    }
    // MARK: - Stack... Creating the stack
    lazy var bottomStack: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [noAccountLabel, signupButton])
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
        view.addSubview(loginHeaderLabel)
        view.addSubview(loginDescriptionLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(bottomStack)
    }
    
    // MARK: - Method... Adding constraints
    private func addConstraints() {
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 77.5),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginHeaderLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 100),
            loginHeaderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            loginDescriptionLabel.topAnchor.constraint(equalTo: loginHeaderLabel.bottomAnchor, constant: 15),
            loginDescriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailLabel.topAnchor.constraint(equalTo: loginDescriptionLabel.bottomAnchor, constant: 40),
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            forgotPasswordButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 30),
            loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            bottomStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomStack.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20)
        ])
    }
}
