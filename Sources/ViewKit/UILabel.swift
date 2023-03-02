import UIKit

extension UILabel {

    // MARK: - Text Attributes

    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }

    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }

    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    public func textColor(_ textColor: UIColor?) -> Self {
        self.textColor = textColor
        return self
    }

    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }

    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.lineBreakMode = lineBreakMode
        return self
    }

    @discardableResult
    public func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
        self.lineBreakStrategy = lineBreakStrategy
        return self
    }

    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }

    @discardableResult
    public func showsExpansionTextWhenTruncated(_ showsExpansionTextWhenTruncated: Bool) -> Self {
        self.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
        return self
    }

    // MARK: - Sizing text

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }

    @discardableResult
    public func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        self.baselineAdjustment = baselineAdjustment
        return self
    }

    @discardableResult
    public func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }

    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }

    // MARK: - Highlight

    @discardableResult
    public func highlightedTextColor(_ highlightedTextColor: UIColor?) -> Self {
        self.highlightedTextColor = highlightedTextColor
        return self
    }

    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

    // MARK: - Shadow

    @discardableResult
    public func shadowColor(_ shadowColor: UIColor?) -> Self {
        self.shadowColor = shadowColor
        return self
    }

    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.shadowOffset = shadowOffset
        return self
    }

    @discardableResult
    public func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
}
