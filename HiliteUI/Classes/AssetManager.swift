import Foundation
import UIKit

public struct AssetConfig {
    static var closeButtonImageName = "icon-close"
    static var nextButtonImageName = "icon-next"
    static var redoButtonImageName = "icon-redo"
    static var reviewApproveButtonImageName = "icon-review-approve"
    static var reviewBackButtonImageName = "icon-back"
    static var toggleCameraImageName = "icon-toggle-camera"
    static var importFromCameraRollImageName = "icon-import-from-camera-roll"
}

open class AssetManager {
    open class func applicationBackgroundImage() -> UIImage! {
        return UIImage(named: "hilite-bg-image")
    }
    
    open class func reviewBackButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.reviewApproveButtonImageName)
    }
    open class func reviewApproveButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.reviewApproveButtonImageName)
    }
    
    open class func redoButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.redoButtonImageName)
    }
    open class func closeButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.closeButtonImageName)
    }
    open class func nextButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.nextButtonImageName)
    }
    open class func toggleCameraImage() -> UIImage? {
        return UIImage(named: AssetConfig.toggleCameraImageName)
    }
    open class func importFromCameraRollImage() -> UIImage? {
        return UIImage(named: AssetConfig.importFromCameraRollImageName)
    }
}
