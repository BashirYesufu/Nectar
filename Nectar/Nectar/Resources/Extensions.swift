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
        button.layer.cornerRadius = 19
        return button
    }
}
extension UITextField {
    class func makeBorderless() -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.leftViewMode = .always
        textField.backgroundColor = .white
        textField.font = UIFont(name: AppFonts.gilroyMedium.font, size: 18)
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }
}
