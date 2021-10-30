import SwiftUI
import SnapshotTesting

@testable import ViewExamples

extension ViewExampleProvider where ViewType: SwiftUI.View {
    
    func assertSnapshots(
        layouts: [ViewExampleLayout] = [.sizeThatFits],
        colorSchemes: [ColorScheme] = [.light, .dark],
        file: StaticString = #file,
        record: Bool = false
    ) {
        for view in views {
            for layout in layouts {
                let viewForSnapshot: AnyView = {
                    switch layout {
                    case .device: return AnyView(view)
                    case .fixed, .sizeThatFits: return AnyView(view.edgesIgnoringSafeArea(.all))
                    }
                }()
                
                for colorScheme in colorSchemes {
                    assertSnapshot(
                        matching: viewForSnapshot,
                        as: .image(layout: layout, userInterfaceStyle: colorScheme.userInterfaceStyle),
                        record: record,
                        file: file,
                        testName: .defaultTestName(
                            for: ViewType.self,
                            layout: layout,
                            userInterfaceStyle: colorScheme.userInterfaceStyle
                        )
                    )
                }
            }
        }
    }
    
}

// MARK: - Private Utils

private extension String {
    
    static func defaultTestName<ViewType>(
        for viewType: ViewType.Type,
        layout: ViewExampleLayout,
        userInterfaceStyle: UIUserInterfaceStyle
    ) -> String {
        return "\(String(describing: ViewType.self))-\(layout)-\(userInterfaceStyle.name)"
    }
    
}

private extension UIUserInterfaceStyle {
    var name: String {
        switch self {
        case .dark:
            return "dark"
        case .light:
            return "light"
        case .unspecified:
            return "unspecified"
        @unknown default:
            assert(false)
            return ""
        }
    }
}

private extension ColorScheme {
    
    var userInterfaceStyle: UIUserInterfaceStyle {
        switch self {
        case .dark:
            return .dark
        case .light:
            return .light
        @unknown default:
            assert(false)
            return .unspecified
        }
    }
    
}
