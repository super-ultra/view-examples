import SwiftUI
import SnapshotTesting

@testable import ViewExamples


extension SnapshotTesting.SwiftUISnapshotLayout {
    
    init(_ layout: ViewExampleLayout) {
        switch layout {
        case .device(let device):
            self = .device(config: ViewImageConfig(device))
        case let .fixed(width, height):
            self = .fixed(width: width ?? 0, height: height ?? 0)
        case .sizeThatFits:
            self = .sizeThatFits
        }
    }
    
}

extension SnapshotTesting.ViewImageConfig {
    
    init(_ device: ViewExampleLayout.Device) {
        switch device {
        case .iPhoneSE:
            self = .iPhoneSe
        case .iPhone8:
            self = .iPhone8
        case .iPhone12:
            self = .iPhoneX
        case .iPad:
            self = .iPadMini
        case .iPadPro12_9:
            self = .iPadPro12_9
        }
    }
    
}

extension SnapshotTesting.Snapshotting where Value: SwiftUI.View, Format == UIImage {
    
    static func image(layout: ViewExampleLayout, userInterfaceStyle: UIUserInterfaceStyle) -> Self {
        return image(layout: SwiftUISnapshotLayout(layout), traits: .init(userInterfaceStyle: userInterfaceStyle))
    }
    
}
