import ViewKit

final class SampleView: ProgrammaticView {
    var body: UIView {
        VerticalStack {
            UIImageView(systemName: "person.circle.fill")
                .contentMode(.scaleAspectFit)
                .size(160)
                .padding(50)
                .accessibilityIdentifier("Person image")
                .onTap(numberOfTapsRequired: 2) { view in
                    print("\(view.accessibilityIdentifier.debugDescription) tapped twice")
                }
                .onSwipe(direction: .up) { view in
                    print("\(view.accessibilityIdentifier.debugDescription) swiped up")
                }
                .onLongPress { view in
                    print("\(view.accessibilityIdentifier.debugDescription) long press")
                }
                .onPan { view in
                    print("\(view.accessibilityIdentifier.debugDescription) pan")
                }
                .onPinch { view in
                    print("\(view.accessibilityIdentifier.debugDescription) pinched")
                }
                .onRotation { view in
                    print("\(view.accessibilityIdentifier.debugDescription) rotation")
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

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContainer {
            SampleView()
        }
    }
}
