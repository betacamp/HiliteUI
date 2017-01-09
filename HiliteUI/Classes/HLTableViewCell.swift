import Foundation
import UIKit

open class HLTableViewCell: UITableViewCell, ReusableView {
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configure()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    public func configure() {
        if let applicationFont = HLFont.applicationFont() {
            self.textLabel?.font = applicationFont
        }
    }
    
    public class func reuseIdentifier() -> String {
        fatalError("this method must be overriden")
    }
    
}
