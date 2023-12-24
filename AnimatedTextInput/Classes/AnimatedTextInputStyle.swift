import UIKit

public protocol AnimatedTextInputStyle {
    var activeColor: UIColor { get }
    var placeholderInactiveColor: UIColor { get }
    var inactiveColor: UIColor { get }
    var lineInactiveColor: UIColor { get }
    var lineActiveColor: UIColor { get }
    var lineHeight: CGFloat { get }
    var errorColor: UIColor { get }
    var textInputFont: UIFont { get }
    var textInputFontColor: UIColor { get }
    var placeholderMinFontSize: CGFloat { get }
    var counterLabelFont: UIFont? { get }
    var leftMargin: CGFloat { get }
    var topMargin: CGFloat { get }
    var rightMargin: CGFloat { get }
    var bottomMargin: CGFloat { get }
    var yHintPositionOffset: CGFloat { get }
    var yPlaceholderPositionOffset: CGFloat { get }
    var textAttributes: [String: Any]? { get }
    var cornerRadius: CGFloat { get }
    var corner: UIRectCorner { get }
    var borderWidth: CGFloat { get }
}

public extension AnimatedTextInput {
    public class DefaultStyle: AnimatedTextInputStyle {
        private static let customBlack = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0, alpha: 1.0)
        public var activeColor: UIColor = AnimatedTextInput.DefaultStyle.customBlack
        public var placeholderInactiveColor: UIColor = UIColor.gray.withAlphaComponent(0.5)
        public var inactiveColor: UIColor = UIColor.gray.withAlphaComponent(0.5)
        public var lineInactiveColor: UIColor = UIColor.gray.withAlphaComponent(0.2)
        public var lineActiveColor: UIColor = AnimatedTextInput.DefaultStyle.customBlack.withAlphaComponent(0.5)
        public var lineHeight: CGFloat = 1.0 / UIScreen.main.scale
        public var errorColor: UIColor = UIColor.systemRed
        public var textInputFont: UIFont = UIFont.systemFont(ofSize: 16)
        public var textInputFontColor: UIColor = UIColor.black.withAlphaComponent(0.9)
        public var placeholderMinFontSize: CGFloat = 9
        public var counterLabelFont: UIFont? = UIFont.systemFont(ofSize: 9)
        public var leftMargin: CGFloat = 24
        public var topMargin: CGFloat = 20
        public var rightMargin: CGFloat = 0
        public var bottomMargin: CGFloat = 10
        public var yHintPositionOffset: CGFloat = 6
        public var yPlaceholderPositionOffset: CGFloat = -5
        //Text attributes will override properties like textInputFont, textInputFontColor...
        public var textAttributes: [String: Any]? = nil
        
        public var borderWidth: CGFloat = 0
        public var cornerRadius: CGFloat = 0
        public var corner: UIRectCorner = .allCorners
        
        public init() { }
        
        @discardableResult
        public func setV(activeColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.activeColor = activeColor
            return self
        }
        @discardableResult
        public func setV(placeholderInactiveColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.placeholderInactiveColor = placeholderInactiveColor
            return self
        }
        @discardableResult
        public func setV(inactiveColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.inactiveColor = inactiveColor
            return self
        }
        @discardableResult
        public func setV(lineInactiveColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.lineInactiveColor = lineInactiveColor
            return self
        }
        @discardableResult
        public func setV(lineActiveColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.lineActiveColor = lineActiveColor
            return self
        }
        @discardableResult
        public func setV(lineHeight: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.lineHeight = lineHeight
            return self
        }
        @discardableResult
        public func setV(errorColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.errorColor = errorColor
            return self
        }
        @discardableResult
        public func setV(textInputFont: UIFont) -> AnimatedTextInput.DefaultStyle {
            self.textInputFont = textInputFont
            return self
        }
        @discardableResult
        public func setV(textInputFontColor: UIColor) -> AnimatedTextInput.DefaultStyle {
            self.textInputFontColor = textInputFontColor
            return self
        }
        @discardableResult
        public func setV(placeholderMinFontSize: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.placeholderMinFontSize = placeholderMinFontSize
            return self
        }
        @discardableResult
        public func setV(counterLabelFont: UIFont) -> AnimatedTextInput.DefaultStyle {
            self.counterLabelFont = counterLabelFont
            return self
        }
        @discardableResult
        public func setV(leftMargin: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.leftMargin = leftMargin
            return self
        }
        @discardableResult
        public func setV(topMargin: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.topMargin = topMargin
            return self
        }
        @discardableResult
        public func setV(rightMargin: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.rightMargin = rightMargin
            return self
        }
        @discardableResult
        public func setV(bottomMargin: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.bottomMargin = bottomMargin
            return self
        }
        @discardableResult
        public func setV(yHintPositionOffset: CGFloat) -> AnimatedTextInput.DefaultStyle {
            self.yHintPositionOffset = yHintPositionOffset
            return self
        }
        @discardableResult
        public func setV(yPlaceholderPositionOffset: CGFloat) -> AnimatedTextInput.DefaultStyle { self.yPlaceholderPositionOffset = yPlaceholderPositionOffset
            return self
        
        }
        @discardableResult
        public func setV(textAttributes: [String : Any]?) -> AnimatedTextInput.DefaultStyle {
            self.textAttributes = textAttributes
            return self
        }
        @discardableResult
        public func setV(borderWidth: CGFloat) -> AnimatedTextInput.DefaultStyle {
            var style = self
            style.borderWidth = borderWidth
            return style
        }
        @discardableResult
        public func setV(cornerRadius: CGFloat) -> AnimatedTextInput.DefaultStyle {
            var style = self
            style.cornerRadius = cornerRadius
            return style
        }
        @discardableResult
        public func setV(corner: UIRectCorner) -> AnimatedTextInput.DefaultStyle {
            var style = self
            style.corner = corner
            return style
        }
    }
}


public struct AnimatedTextInputStyleBlue: AnimatedTextInputStyle {
    
    private static let customBlue = UIColor(red: 51.0/255.0, green: 175.0/255.0, blue: 236.0/255.0, alpha: 1.0)
    public let activeColor = AnimatedTextInputStyleBlue.customBlue
    public let placeholderInactiveColor = UIColor.gray.withAlphaComponent(0.5)
    public let inactiveColor = UIColor.gray.withAlphaComponent(0.5)
    public let lineInactiveColor = UIColor.gray.withAlphaComponent(0.2)
    public let lineActiveColor = AnimatedTextInputStyleBlue.customBlue.withAlphaComponent(0.5)
    public let lineHeight: CGFloat = 1.0 / UIScreen.main.scale
    public let errorColor = UIColor.red
    public let textInputFont = UIFont.systemFont(ofSize: 14)
    public let textInputFontColor = UIColor.black
    public let placeholderMinFontSize: CGFloat = 9
    public let counterLabelFont: UIFont? = UIFont.systemFont(ofSize: 9)
    public let leftMargin: CGFloat = 25
    public let topMargin: CGFloat = 20
    public let rightMargin: CGFloat = 0
    public let bottomMargin: CGFloat = 10
    public let yHintPositionOffset: CGFloat = 6
    public let yPlaceholderPositionOffset: CGFloat = -5
    //Text attributes will override properties like textInputFont, textInputFontColor...
    public let textAttributes: [String: Any]? = nil
    
    public var borderWidth: CGFloat = 0
    public var cornerRadius: CGFloat = 0
    public var corner: UIRectCorner = .allCorners
    
    public init() { }
}
