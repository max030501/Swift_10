//
//  ViewController.swift
//  BlurApp
//
//  Created by Maxim on 16.06.2021.
//

import UIKit

class ViewController: UIViewController {
    let imageSet = ["cloud", "coffe", "food"]
    var blurEffectView: UIVisualEffectView?
    @IBOutlet weak var backgroundImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()	
        let selectedImageIndex = Int(arc4random_uniform(3))
        // Apply blurring effect
        backgroundImageView.image = UIImage(named: imageSet[selectedImageIndex])
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView?.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView!)
        // Do any additional setup after loading the view.
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        blurEffectView?.frame = view.bounds
    }


}

