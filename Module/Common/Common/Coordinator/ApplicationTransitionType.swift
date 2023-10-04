//
//  AppTransition.swift
//  Common
//
//  Created by Naratpon Buakhaw on 21/9/2566 BE.
//

import UIKit

public enum ApplicationTransitionType {
    case root(scene: String)
    case push(scene: String, animated: Bool)
    case present(scene: String, animated: Bool)
    case pop(animated: Bool)
    case dismiss(animated: Bool)
}

