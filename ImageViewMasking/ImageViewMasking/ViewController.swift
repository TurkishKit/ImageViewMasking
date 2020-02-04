//
//  ViewController.swift
//  ImageViewMasking
//
//  Created by Ufuk Köşker on 4.02.2020.
//  Copyright © 2020 Ufuk Köşker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    let maskView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        maskView.image = #imageLiteral(resourceName: "Logo")
        logoImageView.mask = maskView
    }
    
    override func viewDidLayoutSubviews() {
        maskView.frame = logoImageView.bounds
    }
}

