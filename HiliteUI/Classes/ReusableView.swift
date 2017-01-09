import Foundation

public protocol ReusableView {
    static func reuseIdentifier() -> String
}
