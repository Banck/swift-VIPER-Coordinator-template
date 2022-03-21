import UIKit

// MARK: - Routable
public protocol Routable {

    /** Pops all the view controllers on the stack except the root view controller and updates the display. */
    @discardableResult
    func popToRootViewController(animated: Bool) -> [UIViewController]?

    /** Pops view controllers until the specified view controller is at the top of the navigation stack. */
    @discardableResult
    func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?

    /** Pops the top view controller from the navigation stack and updates the display. */
    @discardableResult
    func popViewController(animated: Bool) -> UIViewController?

    /** Pushes a view controller onto the receiver’s stack and updates the display. */
    func push(_ viewController: UIViewController, animated: Bool)

    /** Present a view controller above the receiver’s stack and updates the display. */
    func present(_ module: UIViewController, animated: Bool)

    /** Replaces all the view controllers currently managed by the navigation controller a new root view controller. */
    func setRootModule(_ module: UIViewController, animated: Bool)
}

public extension Routable {

    func setRootModule(_ module: UIViewController) {
        setRootModule(module, animated: false)
    }
}

// MARK: - Router
final public class Router: NSObject, Routable {
    
    fileprivate weak var rootController: UINavigationController?

    public init(rootController: UINavigationController) {
        self.rootController = rootController

        super.init()
    }
}

// MARK: - Navigation methods
public extension Router {

    func popToRootViewController(animated: Bool) -> [UIViewController]? {
        let poppedControllers = rootController?.popToRootViewController(animated: animated)
        return poppedControllers
    }

    func popToViewController(
        _ viewController: UIViewController,
        animated: Bool
    ) -> [UIViewController]? {
        let poppedControllers = rootController?.popToViewController(viewController, animated: animated)
        return poppedControllers
    }

    func popViewController(animated: Bool) -> UIViewController? {
        let poppedController = rootController?.popViewController(animated: animated)
        return poppedController
    }

    func push(_ viewController: UIViewController, animated: Bool) {
        rootController?.pushViewController(viewController, animated: animated)
    }

    func present(_ module: UIViewController, animated: Bool) {
        rootController?.present(module, animated: animated)
    }


    func setRootModule(_ module: UIViewController, animated: Bool) {
        rootController?.setViewControllers([module], animated: animated)
    }
}
