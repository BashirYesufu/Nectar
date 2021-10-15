//
//  LandingTabBarController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 15/10/2021.
//

import UIKit

class LandingTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        insertViewContollers()
    }
    private func insertViewContollers() {
        let shop = ShopViewController()
        let explore = ExploreViewController()
        let cart = CartViewController()
        let favourite = FavouriteViewController()
        let account = AccountViewController()
        let viewControllers: [UIViewController] = [shop, explore, cart, favourite, account]
        let imageName: [String] = ["Shop", "Explore", "Cart", "Favourite", "Account"]
        
        self.setViewControllers(viewControllers, animated: false)
        
        guard let items = self.tabBar.items else { return }
        
        for item in 0 ... 4 {
            items[item].image = UIImage(named: imageName[item])
        }
        self.tabBar.layer.cornerRadius = 15
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = AppColors.green.color
    }
}
