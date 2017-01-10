import Foundation
import UIKit

open class HorizontalButtonGroupView: ButtonGroupView {
    public var buttons = Array<Button>()
    
    public class func greenButtonGroup() -> HorizontalButtonGroupView! {
        let button = HorizontalButtonGroupView()
        button.backgroundColor = HLColor.green
        return button
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
    
    public func setup() {
        backgroundColor = HLColor.yellow
    }
    
    public func addButton(_ button: Button!) {
        button.translatesAutoresizingMaskIntoConstraints = true
        self.addSubview(button)
        buttons.append(button)
    }
    
    public func addButton(_ button: Button!, atIndex index: Int) {
        button.translatesAutoresizingMaskIntoConstraints = true
        self.addSubview(button)
        buttons.insert(button, at: index)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()

        if (buttons.count < 1) { return }

        let widthMultiplier:CGFloat = CGFloat(1.0) / CGFloat(buttons.count)

        for button in buttons {
            if let index = buttons.index(of: button) {
                let x = (widthMultiplier * self.bounds.size.width) * CGFloat(index)
                
                button.frame = CGRect(x: x, y: 0, width: self.bounds.size.width * widthMultiplier, height: self.bounds.size.height)
            }
        }
        
        setNeedsUpdateConstraints()
    }

    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if (!showSeparator) { return }
        
        let context = UIGraphicsGetCurrentContext()
        
        let widthMultiplier:CGFloat = CGFloat(1.0) / CGFloat(buttons.count)

        context?.setLineWidth(1.0)
        context?.setStrokeColor(HLColor.gray.withAlphaComponent(0.7).cgColor)
        
        for button in buttons {
            if let index = buttons.index(of: button) {
                if (index == 0) { continue }
                
                let x = (widthMultiplier * self.bounds.size.width) * CGFloat(index)
                let verticalPadding = self.bounds.size.height * 0.33
                
                context?.move(to: CGPoint(x: x, y: verticalPadding))
                context?.addLine(to: CGPoint(x: x, y: self.bounds.size.height - verticalPadding))
                context?.strokePath()
            }
        }
    }
    
    override open func enable() {
        super.enable()
        
        for button in buttons {
            button.isEnabled = true
        }
    }

    override open func disable() {
        super.disable()
        
        for button in buttons {
            button.isEnabled = false
        }
    }
}
