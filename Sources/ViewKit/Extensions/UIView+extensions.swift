public extension UIView {
    enum Edge {
        case top
        case left
        case bottom
        case right

        case horizontal
        case vertical
        case all
    }

    convenience init(_ color: UIColor) {
        self.init()
        backgroundColor(color)
        maxSize()
    }

    // MARK: - Layout

    @discardableResult
    func add(_ view: UIView) -> Self {
        addSubview(view)
        return self
    }

    func prepareForConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    @discardableResult
    func prepareSubviewsForConstraints() -> Self {
        subviews.forEach { $0.prepareForConstraints() }
        return self
    }

    @discardableResult
    func constrained(_ constraints: [NSLayoutConstraint]) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
        return self
    }

    @discardableResult
    func constrain(_ constraints: [NSLayoutConstraint]) -> Self {
        NSLayoutConstraint.activate(constraints)
        return self
    }

    // MARK: -  Configuring a view's visual apperance

    @discardableResult
    func backgroundColor(_ color: UIColor?) -> Self {
        backgroundColor = color
        return self
    }

    @discardableResult
    func hidden(_ isHidden: Bool = true) -> Self {
        self.isHidden = isHidden
        return self
    }

    @discardableResult
    func show(_ isShowing: Bool = true) -> Self {
        self.isHidden = !isShowing
        return self
    }

    @discardableResult
    func alpha(_ value: CGFloat) -> Self {
        alpha = value
        return self
    }

    @discardableResult
    func opacity(_ value: CGFloat) -> Self {
        return alpha(value)
    }

    @discardableResult
    func translucent() -> Self {
        return alpha(0.5)
    }

    @discardableResult
    func transparent() -> Self {
        return alpha(0)
    }

    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> Self {
        self.isOpaque = isOpaque
        return self
    }

    @discardableResult
    func tintColor(_ tintColor: UIColor?) -> Self {
        self.tintColor = tintColor
        return self
    }

    @discardableResult
    func tintAdjustmentsMode(_ tintAdjustmentsMode: TintAdjustmentMode) -> Self {
        self.tintAdjustmentMode = tintAdjustmentsMode
        return self
    }

    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool = true) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }

    @discardableResult
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool = true) -> Self {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }

    @discardableResult
    func mask(_ mask: UIView?) -> Self {
        self.mask = mask
        return self
    }

    @discardableResult
    func isUserInteractionEnabled (_ isUserInteractionEnabled: Bool = true) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    func isMultipleTouchEnabled (_ isMultipleTouchEnabled: Bool = true) -> Self {
        self.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }

    @discardableResult
    func isExclusiveTouch (_ isExclusiveTouch: Bool = true) -> Self {
        self.isExclusiveTouch = isExclusiveTouch
        return self
    }

    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        return self
    }

    @discardableResult
    func maskToBounds(_ maskToBounds: Bool = true) -> Self {
        layer.masksToBounds = maskToBounds
        return self
    }

    // MARK: - Bounds and frames

    @discardableResult
    func frame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }

    @discardableResult
    func bounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        return self
    }

    @discardableResult
    func contentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        self.setContentHuggingPriority(priority, for: axis)
        return self
    }

    @discardableResult
    func compressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        self.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }

    @discardableResult
    func transform(_ scaleX: CGFloat, _ scaleY: CGFloat) -> Self {
        transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
        return self
    }

    @discardableResult
    func scale(_ amount: CGFloat) -> Self {
        return transform(amount, amount)
    }

    @discardableResult
    func move(_ dx: CGFloat, _ dy: CGFloat = 0) -> Self {
        transform = transform.translatedBy(x: dx, y: dy)
        return self
    }

    @discardableResult
    func fit() -> Self {
        self.sizeToFit()
        return self
    }

    // MARK: - Accessbility

    func accessibilityIdentifier(_ identifier: String) -> Self {
        accessibilityIdentifier = identifier
        return self
    }

    @discardableResult
    func accessibilityFrame(_ frame: CGRect) -> Self {
        self.accessibilityFrame = frame
        return self
    }

    @discardableResult
    func accessibilityLabel(_ label: String) -> Self {
        self.accessibilityLabel = label
        return self
    }

    // MARK: - Gestures
    
    @discardableResult
    func onTap(numberOfTapsRequired: Int = 1,  _ completion: @escaping (Self) -> Void) -> Self {
        let tapGesture = ClosureTapGestureRecognizer()
        tapGesture.numberOfTapsRequired = numberOfTapsRequired
        
        tapGesture.addAction {
            completion(self)
        }
        
        addGestureRecognizer(tapGesture)
        return self
    }

    @discardableResult
    func onLongPress(minimumPressDuration: TimeInterval = 0.5, _ completion: @escaping (Self) -> Void) -> Self {
        let longPressGesture = ClosureLongPressGestureRecognizer()
        longPressGesture.minimumPressDuration = minimumPressDuration

        longPressGesture.addAction {
            completion(self)
        }

        addGestureRecognizer(longPressGesture)
        return self
    }

    @discardableResult
    func onSwipe(direction: UISwipeGestureRecognizer.Direction = .right, _ completion: @escaping (Self) -> Void) -> Self {
        let swipeGesture = ClosureSwipeGestureRecognizer()
        swipeGesture.direction = direction

        swipeGesture.addAction {
            completion(self)
        }

        addGestureRecognizer(swipeGesture)
        return self
    }

    @discardableResult
    func onPinch(_ completion: @escaping (Self) -> Void) -> Self {
        let pinchGesture = ClosurePinchGestureRecognizer()

        pinchGesture.addAction {
            completion(self)
        }

        addGestureRecognizer(pinchGesture)
        return self
    }

    // MARK: - Gestures

    @discardableResult
    func onRotation(_ completion: @escaping (Self) -> Void) -> Self {
        let rotationGesture = ClosureRotationGestureRecognizer()

        rotationGesture.addAction {
            completion(self)
        }

        addGestureRecognizer(rotationGesture)
        return self
    }

    @discardableResult
    func onPan(minimumNumberOfTouches: Int = 1, maximumNumberOfTouches: Int = 2, _ completion: @escaping (Self) -> Void) -> Self {
        let panGesture = ClosurePanGestureRecognizer()
        panGesture.minimumNumberOfTouches = minimumNumberOfTouches
        panGesture.maximumNumberOfTouches = maximumNumberOfTouches

        panGesture.addAction {
            completion(self)
        }

        addGestureRecognizer(panGesture)
        return self
    }

}

public extension UIView {

    @discardableResult
    func width(_ constant: CGFloat) -> Self {
        return constrained([
            widthAnchor.constraint(equalToConstant: constant)
        ])
    }

    @discardableResult
    func height(_ constant: CGFloat) -> Self {
        return constrained([
            heightAnchor.constraint(equalToConstant: constant)
        ])
    }

    @discardableResult
    func size(_ constant: CGFloat) -> Self {
        return width(constant).height(constant)
    }

    @discardableResult
    func pinEdge(_ edge: Edge, _ offset: CGFloat = 0) -> Self {
        guard let superview else { return self }

        if [.top, .vertical, .all].contains(edge) {
            constrained([ topAnchor.constraint(equalTo: superview.topAnchor, constant: offset) ])
        }

        if [.left, .horizontal, .all].contains(edge) {
            constrained([ leftAnchor.constraint(equalTo: superview.leftAnchor, constant: offset) ])
        }

        if [.bottom, .vertical, .all].contains(edge) {
            constrained([ bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -offset) ])
        }

        if [.right, .horizontal, .all].contains(edge) {
            constrained([ rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -offset) ])
        }

        return self
    }

    @discardableResult
    func pinEdges(_ edges: [Edge] = [.all], _ offset: CGFloat = 0) -> Self {
        edges.forEach { pinEdge($0)}
        return self
    }

    @discardableResult
    func pinEdges(_ offset: CGFloat = 0) -> Self {
        pinEdge(.all, offset)
        return self
    }

    @discardableResult
    func maxWidth() -> Self {
        when(.ProgrammaticViewContentUpdated) { [weak self] in
            guard let self else { return }
            guard let superview = self.superview else { return }
            let constraint = self.widthAnchor.constraint(equalTo: superview.widthAnchor, multiplier: 1)
            constraint.priority = .dragThatCanResizeScene
            constraint.isActive = true
        }
        return self
    }

    @discardableResult
    func maxHeight() -> Self {
        when(.ProgrammaticViewContentUpdated) { [weak self] in
            guard let self else { return }
            guard let superview = self.superview else { return }
            let constraint = self.heightAnchor.constraint(equalTo: superview.heightAnchor, multiplier: 1)
            constraint.priority = .dragThatCanResizeScene
            constraint.isActive = true
        }
        return self
    }

    @discardableResult
    func maxSize() -> Self {
        return maxHeight().maxWidth()
    }

    @discardableResult
    func padding(_ padding: CGFloat = 10) -> UIView {
        let containerView = UIView()
        containerView.addSubview(self)
        pinEdges(padding)
        return containerView
    }

    @discardableResult
    func padding(_ edge: Edge, _ padding: CGFloat = 10) -> UIView {
        let containerView = UIView()
        containerView.addSubview(self)
        pinEdge(edge, padding)
        return containerView
    }

    func round() -> Self {
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
        layer.masksToBounds = true
        addObserver(self, forKeyPath: #keyPath(bounds), options: .new, context: nil)
        return self
    }

    override func observeValue(
        forKeyPath keyPath: String?,
        of object: Any?,
        change: [NSKeyValueChangeKey: Any]?,
        context: UnsafeMutableRawPointer?
    ) {
        if keyPath == #keyPath(bounds) {
            layer.cornerRadius = min(bounds.width, bounds.height) / 2
        }
    }
}
