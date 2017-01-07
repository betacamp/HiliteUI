import Foundation
import UIKit

open class Button: UIButton, ShowsAsLoading {
    var spinnerView:UIActivityIndicatorView? = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
    
    open class func yellowButton() -> Button! {
        let button = Button()
        button.backgroundColor = UIColor.yellow
        button.spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        button.setTitleColor(HLColor.black, for: UIControlState())
        return button
    }

    open class func greenButton() -> Button! {
        let button = Button()
        button.backgroundColor = HLColor.green
        button.spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        button.setTitleColor(HLColor.black, for: UIControlState())
        return button
    }

    open init() {
        super.init(frame: CGRect.zero)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    override open init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }

    open func configure() {
        if let applicationFont = HLFont.applicationFontCondensedBoldItalic() {
            self.titleLabel?.font = applicationFont
        }
    }
    
    open func showAsLoading(_ loading: Bool) {
        if (loading) {
            if let spinner = spinnerView {
                self.addSubview(spinner)
                
                if let label = self.titleLabel {
                    spinner.center = CGPoint(x: label.left() - (spinner.bounds.size.width / 2.0) - 10, y: label.center.y)
                } else {
                    spinner.center = CGPoint(x: self.bounds.size.width/2.0, y: self.bounds.size.height/2.0)
                }
                spinner.startAnimating()
            }
            titleLabel?.alpha = 0.3
        } else {
            spinnerView?.removeFromSuperview()
            spinnerView?.stopAnimating()
            titleLabel?.alpha = 1.0
        }
    }
}
