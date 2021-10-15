//
//  MobileNumberViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 12/10/2021.
//

import UIKit

class MobileNumberViewController: UIViewController {

    // MARK: - Button... Creating the back button
    lazy var backButton: UIButton = {
        let button = UIButton.makeBackButton()
        button.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        return button
    }()
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    // MARK: - Label... Creating the header
    lazy var headerLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Enter your mobile number"
        return label
    }()
    // MARK: - Label... Creating the mobile number label
    lazy var mobileNumberLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Mobile Number"
        return label
    }()
    // MARK: - TextField... Creating the number textField
    lazy var numberTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Mobile number"
        textField.keyboardType = .phonePad
        return textField
    }()
    // MARK: - Button... Creating the proceed button
    lazy var proceedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 67).isActive = true
        button.widthAnchor.constraint(equalToConstant: 67).isActive = true
        button.layer.cornerRadius = 33.5
        button.setImage(UIImage(named: "Go Forward"), for: .normal)
        button.backgroundColor = AppColors.green.color
        button.addTarget(self, action: #selector(goToFourDigitScreen), for: .touchUpInside)
        return button
    }()
    @objc func goToFourDigitScreen() {
        let fourDigitScreen = FourDigitCodeViewController()
        navigationController?.pushViewController(fourDigitScreen, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                if self.view.frame.origin.y == 0 {
                    let keyboardSize = keyboardSize.height + 20
                    self.proceedButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -keyboardSize).isActive = true
                } else {
                    self.proceedButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -90.84).isActive = true
                }
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            proceedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90.84).isActive = true
        }
    }
    // MARK: - Method... Adding subviews
    private func addSubviews() {
        view.backgroundColor = .white
        view.addSubview(backButton)
        view.addSubview(headerLabel)
        view.addSubview(mobileNumberLabel)
        view.addSubview(numberTextField)
        view.addSubview(proceedButton)
    }
    // MARK: - Method... Adding constraints
    private func addConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 57),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            headerLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 65),
            headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            mobileNumberLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 28),
            mobileNumberLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            numberTextField.topAnchor.constraint(equalTo: mobileNumberLabel.bottomAnchor, constant: 10),
            numberTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            numberTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            proceedButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            proceedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90)
        ])
    }
}
