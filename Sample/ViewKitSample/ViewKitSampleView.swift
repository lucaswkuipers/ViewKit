import ViewKit

struct ViewKitSampleView: ProgrammaticView {
    let contacts: [String] = ["John", "Marie", "Carl"]

    var body: UIView {
        VerticalStack {
            For(contacts) {
                UILabel($0)
            }
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
