import Foundation

final class ViewExampleFlatMap<InputProvider: ViewExampleProvider, OutputView>: ViewExampleProvider {
    typealias InputView = InputProvider.ViewType
    typealias ViewType = OutputView
        
    init(_ inputProvider: InputProvider, transform: @escaping (InputView) -> [OutputView]) {
        self.inputProvider = inputProvider
        self.transform = transform
    }
    
    // MARK: - ViewExampleProvider
    
    var views: [OutputView] {
        inputProvider.views.flatMap(transform)
    }
    
    // MARK: - Private
    
    private let inputProvider: InputProvider
    private let transform: (InputView) -> [OutputView]
    
}

extension ViewExampleProvider {
    
    func flatMap<OutputView>(
        _ transform: @escaping (Self.ViewType) -> [OutputView]
    ) -> ViewExampleFlatMap<Self, OutputView> {
        return ViewExampleFlatMap(self, transform: transform)
    }
    
}
