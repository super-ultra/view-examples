import Foundation
import CoreGraphics

enum ViewExampleLayout: RawRepresentable {
    
    enum Device: String {
        case iPhoneSE = "iPhone SE (1st generation)"
        case iPhone8 = "iPhone 8"
        case iPhone12 = "iPhone 12"
        case iPad = "iPad (9th generation)"
        case iPadPro12_9 = "iPad Pro (12.9-inch) (4th generation)"
    }
    
    case device(Device)
    case sizeThatFits
    case fixed(width: CGFloat? = nil, height: CGFloat? = nil)
    
    init?(rawValue: String) {
        assert(false)
        return nil
    }
    
    var rawValue: String {
        switch self {
        case .device(let device):
            return "device-\(device)"
        case .sizeThatFits:
            return "sizeThatFits"
        case let .fixed(width: width, height: height):
            let widthLabel = width.map { "\($0)" } ?? "*"
            let heightLabel = height.map { "\($0)" } ?? "*"
            return "fixed-\(widthLabel)x\(heightLabel)"
        }
    }
    
    typealias RawValue = String
}

extension ViewExampleLayout.Device {
    
    var size: CGSize {
        switch self {
        case .iPhoneSE:
            return CGSize(width: 320, height: 568)
        case .iPhone8:
            return CGSize(width: 375, height: 667)
        case .iPhone12:
            return CGSize(width: 390, height: 844)
        case .iPad:
            return CGSize(width: 820, height: 1180)
        case .iPadPro12_9:
            return CGSize(width: 1024, height: 1366)
        }
    }
    
}

extension ViewExampleLayout {
    
    static func fixedWidth(_ device: Device) -> ViewExampleLayout {
        return .fixed(width: device.size.width)
    }
    
}
