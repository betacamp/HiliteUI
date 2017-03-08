import Foundation
import UIKit

public struct AssetConfig {
    public static var closeButtonImageName = "icon-close"
    public static var nextButtonImageName = "icon-next"
    public static var redoButtonImageName = "icon-redo"
    public static var reviewApproveButtonImageName = "icon-review-approve"
    public static var reviewBackButtonImageName = "icon-back"
    public static var toggleCameraImageName = "icon-toggle-camera"
    public static var importFromCameraRollImageName = "icon-import-from-camera-roll"
}

open class AssetManager {
    open class func applicationBackgroundImage() -> UIImage! {
        return UIImage(named: "hilite-bg-image")
    }
    
    open class func reviewBackButtonImage() -> UIImage? {
        return UIImage(named: AssetConfig.reviewBackButtonImageName)
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
