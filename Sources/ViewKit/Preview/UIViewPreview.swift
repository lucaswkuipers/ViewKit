import SwiftUI

public struct UIViewPreview<View: ProgrammaticViewNew>: UIViewRepresentable {
    private let view: View

    public init(_ builder: @escaping () -> View) {
        view = builder()
    }

    public func makeUIView(context: Context) -> UIView {
        let mview = UIView()
        view.attach(to: mview)
        return mview
    }

    public func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
