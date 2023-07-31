public extension UIImageView {

    @available(iOS 13.0, *)
    convenience init(systemName: String) {
        self.init(image: UIImage(systemName: systemName))
    }

    convenience init(_ name: String) {
        self.init(image: UIImage(named: name))
    }

    // MARK: - Acessing the displayed images

    @discardableResult
    func image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }

    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> Self {
        self.highlightedImage = highlightedImage
        return self
    }

    // MARK: - Animating a sequence of images

    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> Self {
        self.animationImages = animationImages
        return self
    }

    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> Self {
        self.highlightedAnimationImages = highlightedAnimationImages
        return self
    }

    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> Self {
        self.animationDuration = animationDuration
        return self
    }

    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> Self {
        self.animationRepeatCount = animationRepeatCount
        return self
    }

    @discardableResult
    func startAnimating(_ start: Bool = true) -> Self {
        start ? startAnimating() : nil
        return self
    }

    @discardableResult
    func stopAnimating(_ stop: Bool = true) -> Self {
        stop ? stopAnimating() : nil
        return self
    }

    // MARK: - Configuring the appearance of symbol images

    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration) -> Self {
        self.preferredSymbolConfiguration = preferredSymbolConfiguration
        return self
    }

    // MARK: - Configuring the image view

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }

    @discardableResult
    func contentMode(_ mode: UIImageView.ContentMode) -> Self {
        self.contentMode = mode
        return self
    }

    @discardableResult
    func renderingMode(_ mode: UIImage.RenderingMode = .automatic) -> Self {
        self.image = image?.withRenderingMode(mode)
        return self
    }
}
