import Foundation
import UIKit

open class ButtonGroupView: UIControl {
    public var showSeparator: Bool = false
    
    public func enable() {
        self.isEnabled = true
    }
    
    public func disable() {
        self.isEnabled = false
    }
}
