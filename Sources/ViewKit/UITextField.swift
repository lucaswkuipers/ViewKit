import UIKit

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
    func isEnabled(_ isEnabled: Bool) -> Self {
        self.isEnabled = isEnabled
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
    func rightView(@ViewBuilder _ builder: () -> UIView) -> Self {
        self.rightView(builder())
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

    // MARK: - Highlight

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

    // MARK: - Border

    @discardableResult
    func borderStyle(_ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
}
