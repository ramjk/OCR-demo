//
//  ViewController.swift
//  OCR Demo
//
//  Created by Alex Kazorian on 5/25/16.
//  Copyright © 2016 Alex Kazorian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let V1 : View1 = View1(nibName: "View1", bundle: nil)
        let Camera : cameraViewController = cameraViewController(nibName: "cameraViewController", bundle: nil)
        
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMoveToParentViewController(self)
        
        self.addChildViewController(Camera)
        self.scrollView.addSubview(Camera.view)
        Camera.didMoveToParentViewController(self)
        
        var CameraFrame : CGRect = Camera.view.frame
        CameraFrame.origin.x = self.view.frame.width
        Camera.view.frame = CameraFrame
            
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 2, self.view.frame.size.height)
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

