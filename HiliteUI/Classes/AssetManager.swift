import Foundation
import UIKit

open class AssetManager {
    open class func applicationBackgroundImage() -> UIImage! {
        return UIImage(named: "hilite-bg-image")
    }
    
    open class func reviewBackButtonImage() -> UIImage? {
        return nil
    }
    open class func reviewApproveButtonImage() -> UIImage? {
        return nil
    }
    
    open class func redoButtonImage() -> UIImage? { return nil }
    open class func closeButtonImage() -> UIImage? { return nil }
    open class func nextButtonImage() -> UIImage? { return nil }
    open class func toggleCameraImage() -> UIImage? { return nil }
    open class func importFromCameraRollImage() -> UIImage? { return nil }

}
