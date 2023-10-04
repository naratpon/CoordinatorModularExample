//
//  DependencyContainer.swift
//  Common
//
//  Created by Naratpon Buakhaw on 25/9/2566 BE.
//

import Foundation

public class DependencyContainer: SceneBuilderContainer {
    public init() {}
    
    public static let shared = DependencyContainer()

    private var builders: [String: Builder] = [:]
    
    public func build(for sceneIdentifier: String) -> Builder? {
        return builders[sceneIdentifier]
    }
    
    public func assemble(builder: Builder, for sceneIdentifier: String) {
        builders[sceneIdentifier] = builder
    }
}
