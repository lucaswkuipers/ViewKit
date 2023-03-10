public extension UIControl {

    // MARK: - Managing state

    @discardableResult
    func isEnabled(_ isEnabled: Bool = true) -> Self {
        self.isEnabled = isEnabled
        return self
    }

    @discardableResult
    func isSelected(_ isSelected: Bool = true) -> Self {
        self.isSelected = isSelected
        return self
    }


    @discardableResult
    func isHighlighted(_ isHighlighted: Bool = true) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

    @discardableResult
    func contentVerticalAlignment(_ contentVerticalAlignment: ContentVerticalAlignment) -> Self {
        self.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
}
