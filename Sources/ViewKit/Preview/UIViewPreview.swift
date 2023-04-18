import SwiftUI

@available(iOS 13.0, *)
public struct PreviewContainer<View: ProgrammaticView>: UIViewRepresentable {
    private let view: View

    public init(_ builder: @escaping () -> View) {
        view = builder()
    }

    public func makeUIView(context: Context) -> UIView {
        return view.body
    }

    public func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
