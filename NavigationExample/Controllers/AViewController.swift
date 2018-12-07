//
//  AViewController.swift
//  NavigationExample
//
//  Created by dsanchezpc on 20/11/18.
//  Copyright © 2018 dsanchezpc. All rights reserved.
//

import UIKit
import Hero

class AViewController: UIViewController {
    @IBOutlet weak var banerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        self.banerView.hero.id = "cv"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        if let nvc = self.navigationController {
            nvc.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
