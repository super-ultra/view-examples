import Foundation

public protocol ViewExamplesProvider {
    associatedtype ViewType
    
    var views: [ViewType] { get }
}
