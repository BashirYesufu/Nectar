//
//  Extensions.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 10/10/2021.
//

import UIKit

extension UIButton {
    class func makeCorneredButton() -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 67).isActive = true
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 18)
        button.backgroundColor = AppColors.green.color
        button.layer.cornerRadius = 19
        return button
    }
    class func makeBackButton() -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Back Button"), for: .normal)
        button.heightAnchor.constraint(equalToConstant: 18).isActive = true
        button.widthAnchor.constraint(equalToConstant: 10).isActive = true
        return button
    }
    class func makeSeeAll() -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("See all", for: .normal)
        button.setTitleColor(AppColors.green.color, for: .normal)
        button.titleLabel?.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 16)
        return button
    }
}

extension UITextField {
    class func makeBorderless() -> UITextField {
        let stroke = UIView()
        stroke.translatesAutoresizingMaskIntoConstraints = false
        stroke.heightAnchor.constraint(equalToConstant: 1).isActive = true
        stroke.backgroundColor = AppColors.grey.color
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = AppColors.white.color
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.font = UIFont(name: AppFonts.gilroyMedium.font, size: 18)
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.addSubview(stroke)
        stroke.bottomAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
        stroke.leftAnchor.constraint(equalTo: textField.leftAnchor).isActive = true
        stroke.rightAnchor.constraint(equalTo: textField.rightAnchor).isActive = true
        return textField
    }
}

extension UILabel {
    class func makeHeaderLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 26)
        label.textColor = AppColors.header.color
        return label
    }
    
    class func makeTagLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = AppColors.tag.color
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 16)
        return label
    }
    
    class func makeCollectionViewTag() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.094, green: 0.09, blue: 0.145, alpha: 1)
        label.font = UIFont(name: AppFonts.gilroySemiBold.font, size: 24)
        return label
    }
}
