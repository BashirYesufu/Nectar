//
//  Extensions.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 10/10/2021.
//

import UIKit

enum AppColors {
    case white
    case green
    case lightBlue
    case darkBlue
    
    var color: UIColor {
        switch self {
        case .white:
            return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        case .green:
            return UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
        case .lightBlue:
            return UIColor(red: 0.325, green: 0.514, blue: 0.925, alpha: 1)
        case .darkBlue:
            return UIColor(red: 0.29, green: 0.4, blue: 0.675, alpha: 1)
        }
    }
}

enum AppFonts {
    case gilroyMedium
    case gilroySemiBold
    
    var font: String {
        switch self {
        case .gilroyMedium:
            return "Gilroy-Medium"
        case .gilroySemiBold:
            return "Gilroy-SemiBold"
        }
    }
}
