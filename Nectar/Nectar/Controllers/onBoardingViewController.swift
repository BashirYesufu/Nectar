//
//  ViewController.swift
//  Nectar
//
//  Created by Decagon Macbook Pro on 10/10/2021.
//

import UIKit

class onBoardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }

    func assignbackground(){
            
            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = UIImage(named: "OnBoarding")
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }

}

