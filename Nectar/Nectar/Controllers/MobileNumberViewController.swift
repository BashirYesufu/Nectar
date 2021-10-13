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
    
    lazy var headerLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Enter your mobile number"
        return label
    }()
    
    lazy var mobileNumberLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Mobile Number"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
    }
  
    private func addSubviews() {
        view.backgroundColor = .white
        view.addSubview(backButton)
        view.addSubview(headerLabel)
        view.addSubview(mobileNumberLabel)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 56.83),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            headerLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 65),
            headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            mobileNumberLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 28),
            mobileNumberLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25)
        ])
    }
}
