//
//  BaseCoordinator.swift
//  Worker Dashy
//
//  Created by Umbrella tech on 16.08.17.
//  Copyright © 2017 Umbrella. All rights reserved.
//

import Foundation
import CollectionKit
import uUI

open class BaseCoordinator {
    
    var childCoordinators: [Coordinatable] = []
            
    public let router : Routable
    public var finishFlow: (() -> Void)?
    
    public init(router: Routable) {
        self.router  = router
    }

    public func addDependency(_ coordinator: Coordinatable) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
    }
    
    public func removeDependency(_ coordinator: Coordinatable?) {
        guard let coordinator = coordinator else { return }
        guard let index = childCoordinators.firstIndex(where: { $0 === coordinator }) else { return }
        childCoordinators.remove(at: index)
    }
}
