import Foundation
import UIKit


open class HLColor {
    open static var white: UIColor {
        return UIColor.white
    }
    open static var black: UIColor {
        return UIColor.black
    }
    open static var blueGreen: UIColor {
        return blueGreenColor()
    }
    open static var green: UIColor {
        return greenColor()
    }
    open static var orange: UIColor {
        return orangeColor()
    }
    open static var textFieldBorderColor: UIColor {
        return HLColor.decimalColorWithRed(144, green: 149, blue: 162)
    }
    open static var clear: UIColor {
        return UIColor.clear
    }
    open static var yellow: UIColor {
        return yellowColor()
    }
    open static var darkText: UIColor {
        return UIColor.darkText
    }
    open static var defaultTextColor: UIColor {
        return HLColor.black
    }
    open static var lightGray: UIColor {
        return lightGrayColor()
    }
    open static var red: UIColor {
        return redColor()
    }
    open static var lightText: UIColor {
        return UIColor.lightText
    }
    open static var gray: UIColor {
        return grayColor()
    }
    open static var purple: UIColor {
        return HLColor.decimalColorWithRed(39, green: 23, blue: 56)
    }
    open class func pinkColor() -> UIColor! {
        return HLColor.decimalColorWithRed(210, green: 20, blue: 95)
    }
    open class func orangeColor() -> UIColor! {
        return HLColor.decimalColorWithRed(227, green: 60, blue: 52)
    }
    open class func yellowColor() -> UIColor! {
        return HLColor.decimalColorWithRed(254, green: 252, blue: 0)
    }
    open class func recordButtonProgressColor() -> UIColor! {
        return HLColor.decimalColorWithRed(28, green: 135, blue: 105)
    }
    open class func recordButtonBaseColor() -> UIColor! {
        return HLColor.decimalColorWithRed(44, green: 214, blue: 167)
    }
    open class func redColor() -> UIColor! {
        return HLColor.decimalColorWithRed(255, green: 74, blue: 74)
    }
    
    open class func greenColor() -> UIColor! {
        return HLColor.decimalColorWithRed(134, green: 219, blue: 52)
    }
    open class func blueGreenColor() -> UIColor! {
        return HLColor.decimalColorWithRed(61, green: 191, blue: 113)
    }
    open class func lightBlueColor() -> UIColor! {
        return HLColor.decimalColorWithRed(0, green: 173, blue: 241)
    }
    open class func tabBarTintColor() -> UIColor! {
        return HLColor.decimalColorWithRed(33, green: 33, blue: 33)
    }
    open class func recordingTextColor() -> UIColor! {
        return HLColor.decimalColorWithRed(198, green: 198, blue: 198)
    }
    open class func darkBlueColor() -> UIColor! {
        return HLColor.decimalColorWithRed(20, green: 15, blue: 47)
    }
    open class func blueColor() -> UIColor! {
        return HLColor.decimalColorWithRed(0, green: 173, blue: 241)
    }
    open class func lightGrayColor() -> UIColor! {
        return HLColor.decimalColorWithRed(235, green: 240, blue: 241)
    }
    open class func grayColor() -> UIColor! {
        return HLColor.decimalColorWithRed(123, green: 123, blue: 123)
    }
    open class func darkGrayColor() -> UIColor! {
        return HLColor.decimalColorWithRed(41, green: 40, blue: 44)
    }
    open class func lightBlackColor() -> UIColor! {
        return HLColor.decimalColorWithRed(23, green: 21, blue: 25)
    }
    
    
    public class func decimalColorWithRed(_ red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor! {
        return HLColor.decimalColorWithRed(red, green: green, blue: blue, alpha: 1.0)
    }

    public class func decimalColorWithRed(_ red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor! {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
}
