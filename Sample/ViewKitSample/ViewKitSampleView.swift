import ViewKit

final class ViewKitSampleView: ProgrammaticView {
    var notes: [String] = ["John", "Marie", "Carl"]
    var showPassword = false {
        didSet {
            print("Show password: \(showPassword)")
        }
    }

    var body: UIView {
        VerticalStack {

            UIImageView(systemName: "person.circle.fill")
                .contentMode(.scaleAspectFit)
                .size(160)
                .padding(50)
                .tapGesture(numberOfTapsRequired: 2) {
                    print("Hello world")
                }

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
                .rightView { textField in
                    UIButton()
                        .tintColor(.systemGray)
                        .image(systemName: showPassword ? "eye" : "eye.slash")
                        .action { button in
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
        .maxWidth()
        .padding()
        .maxSize()
    }
}

// MARK: - Previews

import SwiftUI

struct ViewKitSampleView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContainer {
            ViewKitSampleView()
        }
    }
}
