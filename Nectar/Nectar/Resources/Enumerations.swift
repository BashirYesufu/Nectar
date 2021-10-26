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
    case ash
    case grey
    case header
    case tag
    case searchField
    case black
    
    var color: UIColor {
        switch self {
        case .white:
            return .white
        case .green:
            return UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
        case .lightBlue:
            return UIColor(red: 0.325, green: 0.514, blue: 0.925, alpha: 1)
        case .darkBlue:
            return UIColor(red: 0.29, green: 0.4, blue: 0.675, alpha: 1)
        case .ash:
            return UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 0.7)
        case .grey:
            return UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        case .header:
            return UIColor(red: 0.012, green: 0.012, blue: 0.012, alpha: 1)
        case .tag:
            return UIColor(red: 0.486, green: 0.486, blue: 0.486, alpha: 1)
        case .searchField:
            return UIColor(red: 0.948, green: 0.952, blue: 0.95, alpha: 1)
        case .black:
            return .black
        }
    }
}

enum AppFonts {
    case gilroyMedium
    case gilroySemiBold
    case gilroyBold
    
    var font: String {
        switch self {
        case .gilroyMedium:
            return "Gilroy-Medium"
        case .gilroySemiBold:
            return "Gilroy-SemiBold"
        case .gilroyBold:
            return "Gilroy-Bold"
        }
    }
}
