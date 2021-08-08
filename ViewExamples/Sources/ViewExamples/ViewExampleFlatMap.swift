import Foundation

public final class ViewExampleFlatMap<InputProvider: ViewExamplesProvider, OutputView>: ViewExamplesProvider {
    typealias InputView = InputProvider.ViewType
    public typealias ViewType = OutputView
        
    init(_ inputProvider: InputProvider, transform: @escaping (InputView) -> [OutputView]) {
        self.inputProvider = inputProvider
        self.transform = transform
    }
    
    // MARK: - ViewExampleProvider
    
    public var views: [OutputView] {
        inputProvider.views.flatMap(transform)
    }
    
    // MARK: - Private
    
    private let inputProvider: InputProvider
    private let transform: (InputView) -> [OutputView]
    
}

public extension ViewExamplesProvider {
    
    func flatMap<OutputView>(
        _ transform: @escaping (Self.ViewType) -> [OutputView]
    ) -> ViewExampleFlatMap<Self, OutputView> {
        return ViewExampleFlatMap(self, transform: transform)
    }
    
}
