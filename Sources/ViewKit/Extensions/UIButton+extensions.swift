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

    @available(iOS 13.0, *)
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

    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> Self {
        self.setPreferredSymbolConfiguration(preferredSymbolConfiguration, forImageIn: state)
        return self
    }

    // MARK: - Specifying the role

    @available(iOS 14.0, *)
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

    @available(iOS 14.0, *)
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

    @available(iOS 14.0, *)
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

// MARK: - Title Label

public extension UIButton {

        @discardableResult
        func text(_ text: String?) -> Self {
            titleLabel?.text = text
            return self
        }

        @discardableResult
        func attributedText(_ attributedText: NSAttributedString?) -> Self {
            titleLabel?.attributedText = attributedText
            return self
        }

        @discardableResult
        func font(_ font: UIFont?) -> Self {
            titleLabel?.font = font
            return self
        }

        @discardableResult
        func textColor(_ textColor: UIColor?) -> Self {
            titleLabel?.textColor = textColor
            return self
        }

        @discardableResult
        func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
            titleLabel?.textAlignment = textAlignment
            return self
        }

        @discardableResult
        func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
            titleLabel?.lineBreakMode = lineBreakMode
            return self
        }

        @available(iOS 14.0, *)
        @discardableResult
        func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
            titleLabel?.lineBreakStrategy = lineBreakStrategy
            return self
        }

        @discardableResult
        func showsExpansionTextWhenTruncated(_ showsExpansionTextWhenTruncated: Bool) -> Self {
            titleLabel?.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
            return self
        }

        // MARK: - Sizing text

        @discardableResult
        func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
            titleLabel?.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
            return self
        }

        @discardableResult
        func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
            titleLabel?.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
            return self
        }

        @discardableResult
        func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
            titleLabel?.baselineAdjustment = baselineAdjustment
            return self
        }

        @discardableResult
        func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
            titleLabel?.minimumScaleFactor = minimumScaleFactor
            return self
        }

        @discardableResult
        func numberOfLines(_ numberOfLines: Int) -> Self {
            titleLabel?.numberOfLines = numberOfLines
            return self
        }

        // MARK: - Highlight

        @discardableResult
        func highlightedTextColor(_ highlightedTextColor: UIColor?) -> Self {
            titleLabel?.highlightedTextColor = highlightedTextColor
            return self
        }

        // MARK: - Shadow

        @discardableResult
        func shadowColor(_ shadowColor: UIColor?) -> Self {
            titleLabel?.shadowColor = shadowColor
            return self
        }

        @discardableResult
        func shadowOffset(_ shadowOffset: CGSize) -> Self {
            titleLabel?.shadowOffset = shadowOffset
            return self
        }

        @discardableResult
        func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
            titleLabel?.preferredMaxLayoutWidth = preferredMaxLayoutWidth
            return self
        }

}
