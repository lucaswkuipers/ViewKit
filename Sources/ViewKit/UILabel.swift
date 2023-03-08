public extension UILabel {

    convenience init(_ text: String) {
        self.init(frame: .zero)
        self.text = text
    }

    // MARK: - Text Attributes

    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }

    @discardableResult
    func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    func textColor(_ textColor: UIColor?) -> Self {
        self.textColor = textColor
        return self
    }

    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.lineBreakMode = lineBreakMode
        return self
    }

    @discardableResult
    func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
        self.lineBreakStrategy = lineBreakStrategy
        return self
    }

    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
        return self
    }

    @discardableResult
    func showsExpansionTextWhenTruncated(_ showsExpansionTextWhenTruncated: Bool) -> Self {
        self.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
        return self
    }

    // MARK: - Sizing text

    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }

    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        self.baselineAdjustment = baselineAdjustment
        return self
    }

    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        self.minimumScaleFactor = minimumScaleFactor
        return self
    }

    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }

    // MARK: - Highlight

    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor?) -> Self {
        self.highlightedTextColor = highlightedTextColor
        return self
    }

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

    // MARK: - Shadow

    @discardableResult
    func shadowColor(_ shadowColor: UIColor?) -> Self {
        self.shadowColor = shadowColor
        return self
    }

    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.shadowOffset = shadowOffset
        return self
    }

    @discardableResult
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
}
