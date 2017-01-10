import Foundation
import UIKit

open class ButtonGroupView: UIControl {
    public var showSeparator: Bool = false
    
    open func enable() {
        self.isEnabled = true
    }
    
    open func disable() {
        self.isEnabled = false
    }
}
