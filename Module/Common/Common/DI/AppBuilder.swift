//
//  AppBuilder.swift
//  Common
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation
import UIKit

public protocol Builder {
    var sceneIdentifier: String { get }
    func viewController() -> UIViewController
}

public protocol SceneBuilderContainer {
    func build(for sceneIdentifier: String) -> Builder?
    func assemble(builder: Builder, for sceneIdentifier: String)
}
