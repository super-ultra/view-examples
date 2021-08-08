import Foundation
import CoreGraphics

public enum ViewExampleLayout: RawRepresentable {
    
    public enum Device: String {
        case iPhoneSE = "iPhone SE (1st generation)"
        case iPhone8 = "iPhone 8"
        case iPhone12 = "iPhone 12"
        case iPadMini = "iPad mini (5th generation)"
        case iPadPro12_9 = "iPad Pro (12.9-inch) (4th generation)"
    }
    
    case device(Device)
    case sizeThatFits
    case fixed(width: CGFloat? = nil, height: CGFloat? = nil)
    
    public init?(rawValue: String) {
        assert(false)
        return nil
    }
    
    public var rawValue: String {
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
    
    public typealias RawValue = String
}

public extension ViewExampleLayout.Device {
    
    var size: CGSize {
        switch self {
        case .iPhoneSE:
            return CGSize(width: 320, height: 568)
        case .iPhone8:
            return CGSize(width: 375, height: 667)
        case .iPhone12:
            return CGSize(width: 390, height: 844)
        case .iPadMini:
            return CGSize(width: 768, height: 1024)
        case .iPadPro12_9:
            return CGSize(width: 1024, height: 1366)
        }
    }
    
}

public extension ViewExampleLayout {
    
    static func fixedWidth(_ device: Device) -> ViewExampleLayout {
        return .fixed(width: device.size.width)
    }
    
}
