//
//  A2ViewController.swift
//  FeatureA
//
//  Created by Naratpon Buakhaw on 19/5/2566 BE.
//

import UIKit
import Common

public class A2ViewController: UIViewController {

    let coordinator = AppCoordinator()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedToB1(_ sender: Any) {
        coordinator.navigate(.present(scene: "B1", animated: true))
    }
    
    @IBAction func tappedToC1(_ sender: Any) {
        coordinator.navigate(.push(scene: "C1", animated: true))
    }
}
