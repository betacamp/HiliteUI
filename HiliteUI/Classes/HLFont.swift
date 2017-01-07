import Foundation
import UIKit
import HiliteCore

open class HLFont: UIFont {
    public class func logFontNames() {
        for family in UIFont.familyNames {
            Logger.logm("\(family)")
            for name in UIFont.fontNames(forFamilyName: family ) {
                Logger.logm("    \(name)")
            }
        }
    }
    
    // regular font
    open class func applicationFont() -> UIFont? {
        return HLFont.applicationFont(14)
    }
    open class func applicationFont(_ size: CGFloat) -> UIFont {
        return HLFont.applicationFont(size, weight: UIFontWeightRegular)
    }
    open class func applicationFont(_ size: CGFloat, weight: CGFloat) -> UIFont {
        return HLFont.systemFont(ofSize: size, weight: weight)
    }

    // bold font
    open class func applicationFontBold() -> UIFont? {
        return HLFont.applicationFontBold(14)
    }
    open class func applicationFontBold(_ size: CGFloat) -> UIFont? {
        return HLFont.applicationFont(14, weight: UIFontWeightBold)
    }
    
    // condensed font
    open class func applicationFontCondensed() -> UIFont {
        return HLFont.applicationFontCondensed(14.0)
    }
    open class func applicationFontCondensed(_ size: CGFloat) -> UIFont {
        return HLFont.applicationFontCondensed(14.0, weight: UIFontWeightThin)
    }
    open class func applicationFontCondensed(_ size: CGFloat, weight: CGFloat) -> UIFont {
        return HLFont.systemFont(ofSize: 14.0, weight: weight)
    }

    // condensed bold font
    open class func applicationFontCondensedBold() -> UIFont? {
        return HLFont.applicationFontCondensedBold(14.0)
    }
    open class func applicationFontCondensedBold(_ size: CGFloat) -> UIFont? {
        return applicationFontCondensedBold(size, weight: UIFontWeightSemibold)
    }
    open class func applicationFontCondensedBold(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.systemFont(ofSize: size, weight: weight)
    }

    // condensed italic font
    open class func applicationFontCondensedItalic() -> UIFont? {
        return HLFont.applicationFontCondensedItalic(14.0)
    }
    open class func applicationFontCondensedItalic(_ size: CGFloat) -> UIFont? {
        return HLFont.applicationFontCondensedItalic(size, weight: UIFontWeightThin)
    }
    open class func applicationFontCondensedItalic(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.italicSystemFont(ofSize: size)
    }

    // bold condensed italic font
    open class func applicationFontCondensedBoldItalic() -> UIFont? {
        return HLFont.applicationFontCondensedBoldItalic(14.0)
    }
    open class func applicationFontCondensedBoldItalic(_ size: CGFloat) -> UIFont? {
        return applicationFontCondensedBold(size, weight: UIFontWeightBold)
    }
    open class func applicationFontCondensedBoldItalic(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.italicSystemFont(ofSize: size)
    }
}
