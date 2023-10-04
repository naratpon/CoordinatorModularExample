//
//  A2Builder.swift
//  FeatureA
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation
import Common
import UIKit

public struct A2Builder: Builder {
    public init() {}
    
    public var sceneIdentifier: String = "A2"
    
    public func viewController() -> UIViewController {
        let bundle = Bundle(identifier: "com.test.FeatureA")
        let storyboard = UIStoryboard(name: "A2", bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: "A2ViewController") as! A2ViewController
        return viewController
    }
}
