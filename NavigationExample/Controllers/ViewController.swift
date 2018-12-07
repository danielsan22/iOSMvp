//
//  ViewController.swift
//  NavigationExample
//
//  Created by dsanchezpc on 20/11/18.
//  Copyright © 2018 dsanchezpc. All rights reserved.
//

import UIKit
import Compass
import Hero

class ViewController: UIViewController {
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customView.hero.id = "cv"
        self.navigationController?.hero.isEnabled = true
        MessagesServices.get()
    }

    @IBAction func toA(_ sender: UIButton) {
        try! Navigator.navigate(urn: "a")
    }
    @IBAction func toB(_ sender: Any) {
        try! Navigator.navigate(urn: "b")
    }
    
}

