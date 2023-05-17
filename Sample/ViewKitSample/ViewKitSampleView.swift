import ViewKit

final class ViewKitSampleView: ProgrammaticView {

    var body: UIView {
        VerticalStack(spacing: 40) {
            UILabel("Hello, world!")
                .font(.preferredFont(forTextStyle: .largeTitle))

            UIButton("Tap me!") { _ in print("Tapped") }
                .font(.preferredFont(forTextStyle: .title1))
                .titleColor(.secondaryLabel, for: .highlighted)
                .backgroundColor(.systemBlue)
                .cornerRadius(20)
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
