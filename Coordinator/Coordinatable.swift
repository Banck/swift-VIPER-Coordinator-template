import Foundation

public protocol Coordinatable: AnyObject {
    func start()
}

public protocol Coordinating: AnyObject {
    var coordinator: Coordinatable? { get set }
}
