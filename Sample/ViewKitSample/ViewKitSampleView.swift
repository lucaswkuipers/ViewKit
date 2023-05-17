import ViewKit

final class ViewKitSampleView: ProgrammaticView {
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
                .maxWidth()
        }
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
