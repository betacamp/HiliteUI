import Foundation
import UIKit

extension UIView {
    func cornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func right() -> CGFloat {
        return rightOf(self)
    }

    func right(_ offset: CGFloat) -> CGFloat {
        return rightOf(self) + offset
    }
    
    func left() -> CGFloat {
        return leftOf(self)
    }

    func left(_ offset: CGFloat) -> CGFloat {
        return leftOf(self) + offset
    }
    
    func top() -> CGFloat {
        return topOf(self)
    }

    func top(_ offset: CGFloat) -> CGFloat {
        return topOf(self) + offset
    }
    
    func bottom() -> CGFloat {
        return bottomOf(self)
    }

    func bottom(_ offset: CGFloat) -> CGFloat {
        return bottomOf(self) + offset
    }
    
    func width() -> CGFloat {
        return self.bounds.size.width
    }

    func height() -> CGFloat {
        return self.bounds.size.height
    }
}
