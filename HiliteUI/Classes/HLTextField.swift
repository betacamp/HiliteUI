import Foundation
import UIKit

open class HLTextField: UITextField {
    public var showBottomBorder = true
    public var bottomBorderLineView = UIImageView()
    public var placeholderTextColor:UIColor! = HLColor.white
    
    open var rightImage: UIImage? {
        didSet {
            let rightImageView = ImageView(image: rightImage)
            rightImageView.contentMode = .scaleAspectFit
            
            self.rightView = rightImageView
            self.rightViewMode = .always
        }
    }

    open var leftImage:UIImage? {
        didSet {
            let leftImageView = ImageView(image: leftImage)
            leftImageView.contentMode = .scaleAspectFit
            
            self.leftView = leftImageView
            self.leftViewMode = .always
            
            print("leftImageView")
            print("\(leftImageView.frame)")
        }
    }
    
    open override var placeholder: String? {
        didSet {
            if let str = placeholder {
                self.attributedPlaceholder = NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName: self.placeholderTextColor.withAlphaComponent(0.9)])
            }
        }
    }
    
    public init() {
        super.init(frame: CGRect.zero)
        setup()
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(frame: CGRect.zero)
        setup()
    }
    
    open func setup() {
        bottomBorderLineView.contentMode = UIViewContentMode.center
        bottomBorderLineView.backgroundColor = HLColor.white.withAlphaComponent(0.1)
        bottomBorderLineView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bottomBorderLineView)
        
        bottomBorderLineView.attachHeight(1.0)
        .attachLeftToLeftOfView(self, offset: 0)
        .attachRightToRightOfView(self, offset: 0)
        .attachBottomToBottomOfView(self, offset: 0)
        .addConstraintsToView(self)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        bottomBorderLineView.isHidden = !showBottomBorder
    }
    
    open class func textFieldWithLeftImage(_ image: UIImage?) -> HLTextField! {
        let textField = HLTextField()

        textField.leftImage = image
        
        return textField
    }

    open class func textFieldWithRightImage(_ image: UIImage?) -> HLTextField! {
        let textField = HLTextField()
        
        let rightImageView = ImageView(image: image)
        rightImageView.contentMode = .scaleAspectFit
        
        textField.rightView = rightImageView
        textField.rightViewMode = .always
        
        print("\(rightImageView.frame)", terminator: "")
        
        return textField
    }

    override open func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        let defaultRect = super.leftViewRect(forBounds: bounds)
        let padding:CGFloat = 10
        
        return CGRect(x: defaultRect.origin.x + padding, y: defaultRect.origin.y, width: defaultRect.size.width, height: defaultRect.size.height)
    }

    override open func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let defaultRect = super.rightViewRect(forBounds: bounds)
        
        return defaultRect
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        let defaultRect = super.textRect(forBounds: bounds)
        
        if (self.leftView != nil) {
//            let rightOfLeftView = self.leftView!.right(10)
            return CGRect(x: defaultRect.origin.x + 15, y: defaultRect.origin.y, width: defaultRect.size.width - 15, height: defaultRect.size.height)
        } else if (self.rightView != nil) {
            let leftOfRightView = self.rightView!.left(-10)
            let originX = self.textAlignment == NSTextAlignment.center ? self.rightView!.bounds.size.width + 10 : 0
            return CGRect(x: originX, y: defaultRect.origin.y, width: leftOfRightView - 10, height: defaultRect.size.height)
        } else {
            return defaultRect
        }
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
