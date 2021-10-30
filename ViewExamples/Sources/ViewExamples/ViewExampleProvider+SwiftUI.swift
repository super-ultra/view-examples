import SwiftUI

extension ViewExampleProvider where ViewType: View {
    
    func usingColorSchemes(_ colorSchemes: [ColorScheme]) -> ViewExampleFlatMap<Self, AnyView> {
        return flatMap { view in
            colorSchemes.map {
                AnyView(view.preferredColorScheme($0))
            }
        }
    }

    func usingLayouts(_ styles: [ViewExampleLayout]) -> ViewExampleFlatMap<Self, AnyView> {
        return flatMap { view in
            styles.map {
                switch $0 {
                case .device(let device):
                    return AnyView(
                        view.previewLayout(.device)
                            .previewDevice(.init(rawValue: device.rawValue))
                    )
                case .sizeThatFits:
                    return AnyView(view.previewLayout(.sizeThatFits))
                case let .fixed(width, height):
                    return AnyView(
                        view.frame(width: width, height: height)
                            .previewLayout(.sizeThatFits)
                    )
                }
            }
        }
    }
    
    func previews(
        layouts: [ViewExampleLayout] = [.sizeThatFits],
        colorSchemes: [ColorScheme] = [.light, .dark]
    ) -> some View {
        let views = usingLayouts(layouts)
            .usingColorSchemes(colorSchemes)
            .views

        return Group {
            ForEach(0..<views.count) {
                views[$0]
            }
        }
    }
}
