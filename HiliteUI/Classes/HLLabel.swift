import Foundation
import UIKit

open class HLLabel: UILabel {
    public var horizontalPadding:CGFloat = 0.0
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    public init() {
        super.init(frame: CGRect.zero)
        self.configure()
    }
    
    public func configure() {
        
        if let applicationFont = HLFont.applicationFont() {
            self.font = applicationFont
        }
    }    
}
