//
//  AppCoordinator.swift
//  Common
//
//  Created by Naratpon Buakhaw on 21/9/2566 BE.
//

import UIKit

public protocol AppCoordinatorType {
    func navigate(_ type: ApplicationTransitionType)
}

public class AppCoordinator: AppCoordinatorType {
    private weak var window: UIWindow!
    
    public init(window: UIWindow) {
        self.window = window
    }
    
    public init() {
        self.window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first ?? UIWindow()
    }
    
    public func navigate(_ type: ApplicationTransitionType){
        switch type {
        case .root(scene: let scene):
            let viewController = buildScene(scene: scene)
            let root: UINavigationController = UINavigationController(rootViewController: viewController)
            window.rootViewController = root
            window.makeKeyAndVisible()
            break
        case .push(scene: let scene, animated: let animated):
            let viewController = buildScene(scene: scene)
            if let navigationController = UIViewController.topMostViewController()?.navigationController {
                navigationController.pushViewController(viewController, animated: animated)
            }
            break
        case .present(scene: let scene, animated: let animated):
            let viewController = buildScene(scene: scene)
            viewController.modalPresentationStyle = .overFullScreen
            if let navigationController = UIViewController.topMostViewController()?.navigationController {
                navigationController.present(viewController, animated: animated)
            }
            break
        case .pop(animated: let animated):
            if let navigationController = UIViewController.topMostViewController()?.navigationController {
                navigationController.popViewController(animated: animated)
            }
            break
        case .dismiss(animated: let animated):
            if let navigationController = UIViewController.topMostViewController()?.presentingViewController {
                navigationController.dismiss(animated: animated)
            }
            break
        }
    }
    
    private func buildScene(scene: String) -> UIViewController {
        guard let build = DependencyContainer.shared.build(for: scene) else {
            fatalError("No builder found for scene identifier: \(scene)")
        }
        return build.viewController()
    }
}
