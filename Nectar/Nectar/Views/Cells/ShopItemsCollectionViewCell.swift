//
//  ShopItemsCollectionViewCell.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 17/10/2021.
//

import UIKit

class ShopItemsCollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    var product: Product? {
        didSet {
            guard let product = product else { return }
            productImage.image = UIImage(named: product.image)
            productName.text = product.name
            productQuantity.text = product.quantity
            productPrice.text = "$" + product.price
        }
    }
    
    // MARK: - ImageView... Creating the product image
    lazy var productImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 63).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 104).isActive = true
        return imageView
    }()
    
    // MARK: - Label... Creating the product name
    lazy var productName: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: AppFonts.gilroyBold.font, size: 16)
        label.textColor = AppColors.black.color
        return label
    }()
    
    // MARK: - Label... Creating the product quantity
    lazy var productQuantity: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        label.textColor = AppColors.searchField.color
        return label
    }()
    
    // MARK: - Label... Creating the product price
    lazy var productPrice: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: AppFonts.gilroyMedium.font, size: 14)
        label.textColor = AppColors.black.color
        return label
    }()
    
    // MARK: - Button... Creating the facebook button
    lazy var plusButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 45.67, height: 45.67))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Plus"), for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = AppColors.green.color
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        contentView.backgroundColor = .red
        addSubview(productImage)
        addSubview(productName)
        addSubview(productQuantity)
        addSubview(productPrice)
        addSubview(plusButton)
        
        
    }
 
    override func layoutSubviews() {
        super.layoutSubviews()
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            productImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            productName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            productName.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 30),
            productQuantity.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            productQuantity.topAnchor.constraint(equalTo: productName.bottomAnchor, constant: 10),
            productPrice.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            productPrice.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 15),
            plusButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 15),
            plusButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15),
        ])
    }
    
    required init?(coder: NSCoder) {
       fatalError("init(code:) has not been implemented")
    }
}
