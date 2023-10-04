//
//  UIViewControllerExtension.swift
//  Common
//
//  Created by Naratpon Buakhaw on 21/9/2566 BE.
//

import UIKit

extension UIViewController {
    static func topMostViewController() -> UIViewController? {
        if #available(iOS 13.0, *) {
            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            return keyWindow?.rootViewController?.topMostViewController()
        }
        
        return UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController?.topMostViewController()
    }
    
    func topMostViewController() -> UIViewController? {
        if let navigationController = self as? UINavigationController {
            return navigationController.topViewController?.topMostViewController()
        }
        else if let presentedViewController = self.presentedViewController {
            return presentedViewController.topMostViewController()
        }
        else {
            return self
        }
    }
}
