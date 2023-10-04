//
//  B1Builder.swift
//  FeatureB
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation
import Common
import UIKit

public struct B1Builder: Builder {
    public init() {}
    
    public var sceneIdentifier: String = "B1"
    
    public func viewController() -> UIViewController {
        let bundle = Bundle(identifier: "com.test.FeatureB")
        let storyboard = UIStoryboard(name: "B1", bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: "B1ViewController") as! B1ViewController
        return viewController
    }
}

