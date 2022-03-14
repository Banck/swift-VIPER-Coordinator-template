//
//  Routable.swift
//  Worker Dashy
//
//  Created by Umbrella tech on 16.08.17.
//  Copyright © 2017 Umbrella. All rights reserved.
//

import UIKit

public protocol Routable {

    func present(_ module: UIViewController, animated: Bool)
    func push(_ module: UIViewController, animated: Bool)
    func popModule(animated: Bool)
    func dismissModule(animated: Bool)
    func setRootModule(_ module: UIViewController)
    func popToRootModule(animated: Bool)
}

final public class Router {

    fileprivate weak var rootController: UINavigationController?

    public init(rootController: UINavigationController) {
        self.rootController = rootController
    }
}

// MARK: - Routable
extension Router: Routable {

    public func present(_ module: UIViewController, animated: Bool) {
        rootController?.present(module, animated: animated)
    }

    public func push(_ module: UIViewController, animated: Bool)  {
        rootController?.pushViewController(module, animated: animated)
    }

    public func popModule(animated: Bool)  {
        rootController?.popViewController(animated: animated)
    }

    public func dismissModule(animated: Bool) {
        rootController?.dismiss(animated: animated)
    }

    public func setRootModule(_ module: UIViewController) {
        rootController?.setViewControllers([module], animated: false)
    }

    public func popToRootModule(animated: Bool) {
        rootController?.popToRootViewController(animated: animated)
    }
}
