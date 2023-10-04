//
//  C1Builder.swift
//  FeatureC
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation
import Common
import UIKit

public struct C1Builder: Builder {
    public init() {}
    
    public var sceneIdentifier: String = "C1"
    
    public func viewController() -> UIViewController {
        let bundle = Bundle(identifier: "com.test.FeatureC")
        let storyboard = UIStoryboard(name: "C1", bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: "C1ViewController") as! C1ViewController
        return viewController
    }
}
