//
//  LocationViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 14/10/2021.
//

import UIKit

class LocationViewController: UIViewController {

    // MARK: - Button... Creating the submit button
    lazy var submitButton: UIButton = {
        let button = UIButton.makeCorneredButton()
        button.setTitle("Submit", for: .normal)
        return button
    }()
    
    // MARK: - TextField... Creating the area textField
    lazy var streetTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Type in your street"
        textField.returnKeyType = .done
        return textField
    }()
    
    // MARK: - Label... Creating the street label
    lazy var yourStreetLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Your Street"
        return label
    }()
    
    // MARK: - TextField... Creating the area textField
    lazy var cityTextField: UITextField = {
        let textField = UITextField.makeBorderless()
        textField.placeholder = "Type in your city"
        textField.returnKeyType = .done
        return textField
    }()
    
    // MARK: - Label... Creating the city label
    lazy var yourCityLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Your City"
        return label
    }()
    
    // MARK: - ImageView... Creating the map image view
    lazy var mapImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 224.69, height: 170.69)
        imageView.image = UIImage(named: "Map")
        return imageView
    }()
    
    // MARK: - Label... Creating the header
    lazy var headerLabel: UILabel = {
        var label = UILabel.makeHeaderLabel()
        label.text = "Select Your Location"
        return label
    }()
    
    // MARK: - Label... Creating the location description label
    lazy var descriptionLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = "Switch on your location to stay in tune with \nwhat's happening in your area"
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.white.color
        addSubviews()
        addConstraints()
    }
    // MARK: - Method... Adding subviews
    private func addSubviews() {
        view.addSubview(submitButton)
        view.addSubview(streetTextField)
        view.addSubview(yourStreetLabel)
        view.addSubview(cityTextField)
        view.addSubview(yourCityLabel)
        view.addSubview(mapImage)
        view.addSubview(headerLabel)
        view.addSubview(descriptionLabel)
    }
    // MARK: - Method... Adding constraints
    private func addConstraints() {
        NSLayoutConstraint.activate([
            submitButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80.5),
            submitButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25.5),
            submitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25.5),
            streetTextField.bottomAnchor.constraint(equalTo: submitButton.topAnchor, constant: -40.5),
            streetTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25.5),
            streetTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25.5),
            yourStreetLabel.bottomAnchor.constraint(equalTo: streetTextField.topAnchor, constant: -5),
            yourStreetLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            cityTextField.bottomAnchor.constraint(equalTo: yourStreetLabel.topAnchor, constant: -30),
            cityTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25.5),
            cityTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25.5),
            yourCityLabel.bottomAnchor.constraint(equalTo: cityTextField.topAnchor, constant: -5),
            yourCityLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            mapImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mapImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            headerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerLabel.topAnchor.constraint(equalTo: mapImage.bottomAnchor, constant: 40),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 15),
        ])
    }
}
