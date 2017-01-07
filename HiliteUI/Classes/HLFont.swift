import Foundation
import UIKit
import HiliteCore

class HLFont: UIFont {
    class func logFontNames() {
        for family in UIFont.familyNames {
            Logger.logm("\(family)")
            for name in UIFont.fontNames(forFamilyName: family ) {
                Logger.logm("    \(name)")
            }
        }
    }
    
    // regular font
    class func applicationFont() -> UIFont? {
        return HLFont.applicationFont(14)
    }
    class func applicationFont(_ size: CGFloat) -> UIFont {
        return HLFont.applicationFont(size, weight: UIFontWeightRegular)
    }
    class func applicationFont(_ size: CGFloat, weight: CGFloat) -> UIFont {
        return HLFont.systemFont(ofSize: size, weight: weight)
    }

    // bold font
    class func applicationFontBold() -> UIFont? {
        return HLFont.applicationFontBold(14)
    }
    class func applicationFontBold(_ size: CGFloat) -> UIFont? {
        return HLFont.applicationFont(14, weight: UIFontWeightBold)
    }
    
    // condensed font
    class func applicationFontCondensed() -> UIFont {
        return HLFont.applicationFontCondensed(14.0)
    }
    class func applicationFontCondensed(_ size: CGFloat) -> UIFont {
        return HLFont.applicationFontCondensed(14.0, weight: UIFontWeightThin)
    }
    class func applicationFontCondensed(_ size: CGFloat, weight: CGFloat) -> UIFont {
        return HLFont.systemFont(ofSize: 14.0, weight: weight)
    }

    // condensed bold font
    class func applicationFontCondensedBold() -> UIFont? {
        return HLFont.applicationFontCondensedBold(14.0)
    }
    class func applicationFontCondensedBold(_ size: CGFloat) -> UIFont? {
        return applicationFontCondensedBold(size, weight: UIFontWeightSemibold)
    }
    class func applicationFontCondensedBold(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.systemFont(ofSize: size, weight: weight)
    }

    // condensed italic font
    class func applicationFontCondensedItalic() -> UIFont? {
        return HLFont.applicationFontCondensedItalic(14.0)
    }
    class func applicationFontCondensedItalic(_ size: CGFloat) -> UIFont? {
        return HLFont.applicationFontCondensedItalic(size, weight: UIFontWeightThin)
    }
    class func applicationFontCondensedItalic(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.italicSystemFont(ofSize: size)
    }

    // bold condensed italic font
    class func applicationFontCondensedBoldItalic() -> UIFont? {
        return HLFont.applicationFontCondensedBoldItalic(14.0)
    }
    class func applicationFontCondensedBoldItalic(_ size: CGFloat) -> UIFont? {
        return applicationFontCondensedBold(size, weight: UIFontWeightBold)
    }
    class func applicationFontCondensedBoldItalic(_ size: CGFloat, weight: CGFloat) -> UIFont? {
        return HLFont.italicSystemFont(ofSize: size)
    }}
