//
//  C1ViewController.swift
//  FeatureC
//
//  Created by Naratpon Buakhaw on 19/5/2566 BE.
//

import UIKit
import Common

public class C1ViewController: UIViewController {

    let coordinator = AppCoordinator()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedToA2(_ sender: Any) {
        coordinator.navigate(.pop(animated: true))
    }
}
