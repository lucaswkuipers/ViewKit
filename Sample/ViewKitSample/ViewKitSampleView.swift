import ViewKit

final class ViewKitSampleView: ProgrammaticView {
    var showPassword = false

    override var body: some UIView {
        VerticalStack {

            UIImageView(systemName: "person.circle.fill")
                .contentMode(.scaleAspectFit)
                .size(160)
                .padding(50)

            UITextField()
                .tag(0)
                .placeholder("Username")
                .autocapitalizationType(.none)
                .autocorrectionType(.no)
                .spellCheckingType(.no)
                .contentHuggingPriority(.required, for: .vertical)
                .padding(15)
                .round()
                .maskToBounds()
                .backgroundColor(.secondarySystemBackground)
                .maxWidth()

            UITextField()
                .tag(1)
                .placeholder("Password")
                .autocapitalizationType(.none)
                .autocorrectionType(.no)
                .secureEntry()
                .spellCheckingType(.no)
                .rightViewMode(.always)
                .clearsOnBeginEditing(false)
                .contentHuggingPriority(.required, for: .vertical)
                .rightView { [weak self] textField in
                    guard let self else { return textField }
                    return UIButton()
                        .tintColor(.systemGray)
                        .image(systemName: self.showPassword ? "eye" : "eye.slash")
                        .action { [weak self] button in
                            guard let self else { return }
                            self.showPassword.toggle()
                            button.image(systemName: self.showPassword ? "eye" : "eye.slash")
                            textField.isSecureTextEntry(!self.showPassword)
                    }
                }
                .padding(15)
                .round()
                .maskToBounds()
                .backgroundColor(.secondarySystemBackground)
                .maxWidth()

            UIButton("Sign in")
                .backgroundColor(.label)
                .titleColor(.systemBackground)
                .titleColor(.systemGray, for: .disabled)
                .disabled()
                .height(50)
                .round()
                .maxWidth()

            Filler()
        }
        .padding()
        .maxSize()
    }
}

// MARK: - Previews

import SwiftUI

struct ViewKitSampleView_Previews: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            ViewKitSampleView()
        }
    }
}
