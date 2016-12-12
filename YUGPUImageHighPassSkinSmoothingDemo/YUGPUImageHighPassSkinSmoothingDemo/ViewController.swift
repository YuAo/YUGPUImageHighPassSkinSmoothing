//
//  ViewController.swift
//  YUGPUImageHighPassSkinSmoothingDemo
//
//  Created by YuAo on 1/24/16.
//  Copyright © 2016 YuAo. All rights reserved.
//

import UIKit
import YUGPUImageHighPassSkinSmoothing

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var sourceImage = UIImage(named: "SampleImage.jpg")!
    var processedImage: UIImage!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let filter  = YUGPUImageHighPassSkinSmoothingFilter()
        filter.amount = 0.7
        self.processedImage = filter.image(byFilteringImage: self.sourceImage)
        self.imageView.image = self.processedImage
    }
    
    @IBAction func handleImageViewLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            self.imageView.image = self.sourceImage
        } else if (sender.state == .ended || sender.state == .cancelled) {
            self.imageView.image = self.processedImage
        }
    }
}

