//
//  ViewController.swift
//  wordplay
//
//  Created by Jorge Peguero on 6/4/18.
//  Copyright © 2018 Jorge Peguero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeImage(_ sender: UIButton) {
        updateMomImage()
    }
    
    let momArray: Array = ["mom1","mom2","mom3","mom4"]
    
    var randomMomNumber:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateMomImage(){
        randomMomNumber = Int(arc4random_uniform(4));
        imageView.image = UIImage(named: momArray[randomMomNumber]);
    }
    
    

}

