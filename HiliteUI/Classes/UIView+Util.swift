import Foundation
import UIKit

extension UIView {
    public func cornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    public func right() -> CGFloat {
        return rightOf(self)
    }

    public func right(_ offset: CGFloat) -> CGFloat {
        return rightOf(self) + offset
    }
    
    public func left() -> CGFloat {
        return leftOf(self)
    }

    public func left(_ offset: CGFloat) -> CGFloat {
        return leftOf(self) + offset
    }
    
    public func top() -> CGFloat {
        return topOf(self)
    }

    public func top(_ offset: CGFloat) -> CGFloat {
        return topOf(self) + offset
    }
    
    public func bottom() -> CGFloat {
        return bottomOf(self)
    }

    public func bottom(_ offset: CGFloat) -> CGFloat {
        return bottomOf(self) + offset
    }
    
    public func width() -> CGFloat {
        return self.bounds.size.width
    }

    public func height() -> CGFloat {
        return self.bounds.size.height
    }
}
