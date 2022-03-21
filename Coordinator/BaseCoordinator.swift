import Foundation

open class BaseCoordinator {
                
    public let router : Routable

    public init(router: Routable) {
        self.router  = router
    }
}
