public extension UITextField {

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
    func placeholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }

    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
        self.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }

    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        self.clearsOnInsertion = clearsOnInsertion
        return self
    }

    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType) -> Self {
        self.autocapitalizationType = autocapitalizationType
        return self
    }

    @discardableResult
    func autocorrectionType(_ autocorrectionType: UITextAutocorrectionType) -> Self {
        self.autocorrectionType = autocorrectionType
        return self
    }

    @discardableResult
    func spellCheckingType(_ spellCheckingType: UITextSpellCheckingType) -> Self {
        self.spellCheckingType = spellCheckingType
        return self
    }

    @discardableResult
    func isSecureTextEntry(_ isSecureTextEntry: Bool) -> Self {
        self.isSecureTextEntry = isSecureTextEntry
        return self
    }

    @discardableResult
    func secureEntry() -> Self {
        self.isSecureTextEntry = true
        return self
    }

    @discardableResult
    func rightView(_ rightView: UIView?) -> Self {
        self.rightView = rightView
        return self
    }

    @discardableResult
    func rightView(@ProgrammaticViewBuilder _ builder: (UITextField) -> UIView) -> Self {
        self.rightView(builder(self))
        return self
    }

    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
        self.rightViewMode = rightViewMode
        return self
    }

    // MARK: - Sizing text

    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    // MARK: - Managing the editing behavior

    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool = true) -> Self {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }

    // MARK: - Background appearance

    @discardableResult
    func borderStyle(_ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }

    @discardableResult
    func background(_ background: UIImage?) -> Self {
        self.background = background
        return self
    }

    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> Self {
        self.disabledBackground = disabledBackground
        return self
    }

    // MARK: - Overlay

    @discardableResult
    func clearButtonMode(_ clearButtonMode: ViewMode) -> Self {
        self.clearButtonMode = clearButtonMode
        return self
    }

    @discardableResult
    func leftView(_ leftView: UIView?) -> Self {
        self.leftView = leftView
        return self
    }

    @discardableResult
    func leftViewMode(_ leftViewMode: ViewMode) -> Self {
        self.leftViewMode = leftViewMode
        return self
    }

    @discardableResult
    func inputView(_ inputView: UIView?) -> Self {
        self.inputView = inputView
        return self
    }

    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.inputAccessoryView = inputAccessoryView
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ interactionState: Any) -> Self {
        self.interactionState = interactionState
        return self
    }

    // MARK: - Tag

    @discardableResult
    func tag(_ tag: Int) -> Self {
        self.tag = tag
        return self
    }
}

public extension UITextField {
    enum AssociatedKeys {
        static var delegateClosure = "delegateClosure"
        static var shouldBeginEditingClosure = "shouldBeginEditingClosure"
        static var didBeginEditingClosure = "didBeginEditingClosure"
        static var shouldEndEditingClosure = "shouldEndEditingClosure"
        static var didEndEditingClosure = "didEndEditingClosure"
        static var shouldChangeCharactersClosure = "shouldChangeCharactersClosure"
        static var shouldClearClosure = "shouldClearClosure"
        static var onChangeClosure = "onChangeClosure"
    }

    private var delegateClosure: ((UITextField) -> Bool)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.delegateClosure) as? (UITextField) -> Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.delegateClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var shouldBeginEditingClosure: ((UITextField) -> Bool)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.shouldBeginEditingClosure) as? (UITextField) -> Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shouldBeginEditingClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var didBeginEditingClosure: ((UITextField) -> Void)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.didBeginEditingClosure) as? (UITextField) -> Void
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.didBeginEditingClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var shouldEndEditingClosure: ((UITextField) -> Bool)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.shouldEndEditingClosure) as? (UITextField) -> Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shouldEndEditingClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var didEndEditingClosure: ((UITextField) -> Void)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.didEndEditingClosure) as? (UITextField) -> Void
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.didEndEditingClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var shouldChangeCharactersClosure: ((UITextField, NSRange, String) -> Bool)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.shouldChangeCharactersClosure) as? (UITextField, NSRange, String) -> Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shouldChangeCharactersClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var shouldClearClosure: ((UITextField) -> Bool)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.shouldClearClosure) as? (UITextField) -> Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shouldClearClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private var onChangeClosure: ((UITextField) -> Void)? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.onChangeClosure) as? (UITextField) -> Void
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.onChangeClosure, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    func onBeginEditing(_ closure: @escaping (UITextField) -> Void) -> Self {
        didBeginEditingClosure = closure
        delegate = self
        return self
    }

    func shouldEndEditing(_ closure: @escaping (UITextField) -> Bool) -> Self {
        shouldEndEditingClosure = closure
        delegate = self
        return self
    }

    func onEndEditing(_ closure: @escaping (UITextField) -> Void) -> Self {
        didEndEditingClosure = closure
        delegate = self
        return self
    }

    func shouldChangeCharacters(_ closure: @escaping (UITextField, NSRange, String) -> Bool) -> Self {
        shouldChangeCharactersClosure = closure
        delegate = self
        return self
    }

    func shouldClear(_ closure: @escaping (UITextField) -> Bool) -> Self {
        shouldClearClosure = closure
        delegate = self
        return self
    }

    func shouldReturn(_ closure: @escaping (UITextField) -> Bool) -> Self {
        delegateClosure = closure
        delegate = self
        return self
    }

    func onChange(_ closure: @escaping (UITextField) -> Void) -> Self {
        addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        onChangeClosure = closure
        return self
    }

    @objc private func textFieldDidChange() {
        onChangeClosure?(self)
    }
}

extension UITextField: UITextFieldDelegate {

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return delegateClosure?(textField) ?? true
    }

    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return shouldBeginEditingClosure?(textField) ?? true
    }

    public func textFieldDidBeginEditing(_ textField: UITextField) {
        didBeginEditingClosure?(textField)
    }

    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return shouldEndEditingClosure?(textField) ?? true
    }

    public func textFieldDidEndEditing(_ textField: UITextField) {
        didEndEditingClosure?(textField)
    }

    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return shouldChangeCharactersClosure?(textField, range, string) ?? true
    }

    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return shouldClearClosure?(textField) ?? true
    }
}
