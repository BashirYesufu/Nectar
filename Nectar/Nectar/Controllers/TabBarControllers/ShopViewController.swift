//
//  ShopViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 15/10/2021.
//

import UIKit

class ShopViewController: UIViewController {
    let street: String = "street"
    let city: String = "city"
    
    // MARK: - ScrollView... Creating the logo
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    // MARK: - ImageView... Creating the logo
    lazy var logo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        imageView.image = UIImage(named: "Orange Logo")
        return imageView
    }()
    
    // MARK: - ImageView... Creating the logo
    lazy var locationIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 15.13).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 18.17).isActive = true
        imageView.image = UIImage(named: "Location")
        return imageView
    }()
    
    // MARK: - Label... Creating the city label
    lazy var yourCityLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = city
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        return label
    }()
    
    // MARK: - Label... Creating the street label
    lazy var yourStreetLabel: UILabel = {
        var label = UILabel.makeTagLabel()
        label.text = street + ","
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        return label
    }()
    
    // MARK: - TextField... Creating the logo
    lazy var searchField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 52).isActive = true
        textField.layer.cornerRadius = 14
        textField.backgroundColor = AppColors.grey.color
        textField.placeholder = "Search Store"
        return textField
    }()
  
    // MARK: - ImageView... Creating the logo
    lazy var advert: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 14
        imageView.heightAnchor.constraint(equalToConstant: 115).isActive = true
        imageView.image = UIImage(named: "Banner")
        return imageView
    }()
    
    // MARK: - Label... Creating the Exclusive Offer label
    lazy var exclusiveOffer: UILabel = {
        let label = UILabel.makeCollectionViewTag()
        label.text = "Exclusive Offer"
        return label
    }()
    
    // MARK: - Button... Creating the Exclusive offer button
    lazy var seeAllExclusiveOffers: UIButton = {
        let button = UIButton.makeSeeAll()
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
    }
    
    private func addSubviews() {
        view.backgroundColor = .white
        view.addSubview(scrollView)
        view.addSubview(logo)
        view.addSubview(searchField)
        view.addSubview(locationIcon)
        view.addSubview(yourCityLabel)
        view.addSubview(yourStreetLabel)
        scrollView.addSubview(advert)
        scrollView.addSubview(exclusiveOffer)
        scrollView.addSubview(seeAllExclusiveOffers)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 57),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yourStreetLabel.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -2),
            yourStreetLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 10),
            locationIcon.rightAnchor.constraint(equalTo: yourStreetLabel.leftAnchor, constant: -5),
            locationIcon.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 10),
            yourCityLabel.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 2),
            yourCityLabel.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 10),
            searchField.topAnchor.constraint(equalTo: yourCityLabel.bottomAnchor, constant: 10),
            searchField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            searchField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            scrollView.topAnchor.constraint(equalTo: searchField.bottomAnchor, constant: 10),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.navigationController?.navigationBar.topAnchor ?? view.safeAreaLayoutGuide.bottomAnchor),
            
            advert.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 5),
            advert.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20),
            advert.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20),
            
        ])
    }
}
