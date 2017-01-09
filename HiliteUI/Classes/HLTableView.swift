import Foundation
import UIKit

open class HLTableView: UITableView {
    public init() {
        super.init(frame: CGRect.zero, style: UITableViewStyle.plain)
    }
    public init(style: UITableViewStyle) {
        super.init(frame: CGRect.zero, style: style)
    }

    override public init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
