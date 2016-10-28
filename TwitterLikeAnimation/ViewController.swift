//
//  ViewController.swift
//  TwitterLikeAnimation
//
//  Created by Vadim Koppe on 28.10.16.
//  Copyright © 2016 Vadim Koppe. All rights reserved.
//

import UIKit
import TwitterAnimation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundView = UIImageView(image: #imageLiteral(resourceName: "background"))
        
        backgroundView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        
        self.view.addSubview(backgroundView)
        
        let twitterAnimationView = TwitterAnimation(iconImage: #imageLiteral(resourceName: "twitterLogo"),iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0 ))
        
        self.view.addSubview(twitterAnimationView)
        
        twitterAnimationView.startAnimation() {
            print("Completed")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

