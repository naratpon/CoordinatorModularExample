//
//  DependencyInjection.swift
//  CoordinatorModularExample
//
//  Created by Naratpon Buakhaw on 21/9/2566 BE.
//

import Foundation
import FeatureA
import FeatureB
import FeatureC
import Common
import UIKit

class DependencyInjection {
    func configure() {
        //Feature A
        let a1Builder = A1Builder()
        let a2Builder = A2Builder()
        //Feature B
        let b1Builder = B1Builder()
        //Feature C
        let c1Builder = C1Builder()
        
        DependencyContainer.shared.assemble(builder: a1Builder, for: a1Builder.sceneIdentifier)
        DependencyContainer.shared.assemble(builder: a2Builder, for: a2Builder.sceneIdentifier)
        DependencyContainer.shared.assemble(builder: b1Builder, for: b1Builder.sceneIdentifier)
        DependencyContainer.shared.assemble(builder: c1Builder, for: c1Builder.sceneIdentifier)
    }
}
