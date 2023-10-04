//
//  A1Builder.swift
//  FeatureA
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation
import Common
import UIKit

public struct A1Builder: Builder {
    public init() {}
    
    public var sceneIdentifier: String = "A1"
    
    public func viewController() -> UIViewController {
        let bundle = Bundle(identifier: "com.test.FeatureA")
        let storyboard = UIStoryboard(name: "A1", bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: "A1ViewController") as! A1ViewController
        return viewController
    }
}
