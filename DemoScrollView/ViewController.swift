//
//  ViewController.swift
//  DemoScrollView
//
//  Created by Jony Singla on 08/03/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.delegate = self;
        scrollView.backgroundColor = UIColor.green;
        scrollView.contentSize = CGSize(width: 0, height: 2000)
        scrollView.isScrollEnabled = true
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y >= (scrollView.contentSize.height - scrollView.frame.size.height)) {
            //reach bottom
             print(scrollView.contentOffset)
            let alertMessage = UIAlertController(title: "Alert!", message: "Reach on Bottom", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
        }
        
        if (scrollView.contentOffset.y < 0){
            //reach top
            print(scrollView.contentOffset)
            let alertMessage = UIAlertController(title: "Alert!", message: "Reach on Top", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
        }
        
        if (scrollView.contentOffset.y >= 0 && scrollView.contentOffset.y < (scrollView.contentSize.height - scrollView.frame.size.height)){
            //not top and not bottom
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

