//
//  B1ViewController.swift
//  FeatureB
//
//  Created by Naratpon Buakhaw on 19/5/2566 BE.
//

import UIKit
import Common

public class B1ViewController: UIViewController {

    let coordinator = AppCoordinator()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedToA2(_ sender: Any) {
        coordinator.navigate(.dismiss(animated: true))
    }
}
