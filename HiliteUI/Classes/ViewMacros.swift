import Foundation
import UIKit

public func rightOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.x + view.bounds.size.width;
}

public func rightOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return rightOf(view) + offset;
}

public func leftOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.x;
}

public func leftOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return leftOf(view) + offset;
}

public func topOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.y;
}

public func topOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return topOf(view) + offset;
}

public func bottomOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.y + view.bounds.size.height;
}

public func bottomOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return bottomOf(view) + offset;
}

public func middleXOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.x + (view.bounds.size.width / 2.0);
}

public func middleXOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return middleXOf(view) + offset;
}

public func middleYOf(_ view: UIView!) -> CGFloat {
    return view.frame.origin.y + (view.bounds.size.height / 2.0);
}

public func middleYOf(_ view: UIView!, offset: CGFloat) -> CGFloat {
    return middleYOf(view) + offset;
}
