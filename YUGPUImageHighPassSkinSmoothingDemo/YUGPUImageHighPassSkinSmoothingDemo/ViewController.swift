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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filter  = YUGPUImageHighPassSkinSmoothingFilter()
        filter.amount = 0.7
        self.processedImage = filter.imageByFilteringImage(self.sourceImage)
        self.imageView.image = self.processedImage
    }
    
    @IBAction func handleImageViewLongPress(sender: UILongPressGestureRecognizer) {
        if sender.state == .Began {
            self.imageView.image = self.sourceImage
        } else if (sender.state == .Ended || sender.state == .Cancelled) {
            self.imageView.image = self.processedImage
        }
    }
}

