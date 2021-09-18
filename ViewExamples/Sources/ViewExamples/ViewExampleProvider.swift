import Foundation

protocol ViewExamplesProvider {
    associatedtype ViewType
    
    var views: [ViewType] { get }
}
