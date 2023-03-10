public extension UIButton {

    // MARK: - State

    @discardableResult
    func disabled(_ disabled: Bool = true) -> Self {
        self.isEnabled = !disabled
        return self
    }

    @discardableResult
    func enabled(_ enabled: Bool = true) -> Self {
        self.isEnabled = enabled
        return self
    }

    // MARK: - Configuration

    @available(iOS 15, *)
    @discardableResult
    func configuration(_ configuration: UIButton.Configuration) -> Self {
        self.configuration = configuration
        return self
    }

    @available(iOS 15, *)
    @discardableResult
    func automaticallyUpdatesConfiguration(_ automaticallyUpdatesConfiguration: Bool) -> Self {
        self.automaticallyUpdatesConfiguration = automaticallyUpdatesConfiguration
        return self
    }

    @available(iOS 15, *)
    @discardableResult
    func configurationUpdateHandler(_ configurationUpdateHandler: UIButton.ConfigurationUpdateHandler?) -> Self {
        self.configurationUpdateHandler = configurationUpdateHandler
        return self
    }

    // MARK: - Managing the title

    @discardableResult
    func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }

    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State = .normal) -> Self {
        self.setAttributedTitle(title, for: state)
        return self
    }

    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }

    @discardableResult
    func titleShadowColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.setTitleShadowColor(color, for: state)
        return self
    }

    // MARK: - Managing images and tint color

    @discardableResult
    func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State) -> Self {
        self.setBackgroundImage(backgroundImage, for: state)
        return self
    }

    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }

    @discardableResult
    func image(systemName: String, for state: UIControl.State = .normal) -> Self {
        self.setImage(UIImage(systemName: systemName), for: state)
        return self
    }

    @discardableResult
    func image(_ name: String, for state: UIControl.State = .normal) -> Self {
        self.setImage(UIImage(named: name), for: state)
        return self
    }

    @discardableResult
    func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> Self {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: state)
        return self
    }

    // MARK: - Specifying the role

    @discardableResult
    func role(_ role: UIButton.Role) -> Self {
        self.role = role
        return self
    }

    // MARK: - Specifying the behavioral style

    @available(iOS 15, *)
    @discardableResult
    func preferredBehavioralStyle(_ preferredBehavioralStyle: UIBehavioralStyle) -> Self {
        self.preferredBehavioralStyle = preferredBehavioralStyle
        return self
    }

    // MARK: - Supporting menu and toggle buttons

    @discardableResult
    func menu(_ menu: UIMenu?) -> Self {
        self.menu = menu
        return self
    }

    @available(iOS 15, *)
    @discardableResult
    func changesSelectionAsPrimaryAction(_ changesSelectionAsPrimaryAction: Bool) -> Self {
        self.changesSelectionAsPrimaryAction = changesSelectionAsPrimaryAction
        return self
    }

    @available(iOS 16, *)
    @discardableResult
    func preferredMenuElementOrder(_ order: UIContextMenuConfiguration.ElementOrder) -> Self {
        self.preferredMenuElementOrder = order
        return self
    }

    // MARK: - Action

    @discardableResult
    func action(_ action: @escaping (UIButton) -> Void) -> Self {
        addAction(UIAction { _ in
            action(self)
        }, for: .touchUpInside)
        return self
    }
}

public extension UIButton {
    convenience init(_ title: String) {
        self.init(frame: .zero)
        self.setTitle(title, for: .normal)
    }
}
