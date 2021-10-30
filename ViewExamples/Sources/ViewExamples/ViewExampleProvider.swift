import Foundation

protocol ViewExampleProvider {
    associatedtype ViewType
    
    var views: [ViewType] { get }
}
