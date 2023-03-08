import UIKit

@resultBuilder
public struct ViewBuilder {
    public static func buildBlock(_ child: UIView) -> UIView { child }
}

@resultBuilder
public struct StackViewBuilder {
    public static func buildBlock(_ children: UIView...) -> [UIView] { children }
}

public extension UIStackView {
    convenience init(
        axis: NSLayoutConstraint.Axis,
        spacing: CGFloat = 10,
        distribution: Distribution = .fillProportionally,
        alignment: Alignment = .center,
        @StackViewBuilder _ builder: () -> [UIView]
    ) {
        self.init(arrangedSubviews: builder())
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
    }
}

public class VerticalStack: UIStackView {
    public convenience init(
        spacing: CGFloat = 10,
        distribution: Distribution = .fill,
        alignment: Alignment = .center,
        @StackViewBuilder _ builder: () -> [UIView]) {
        self.init(arrangedSubviews: builder())
        self.axis = .vertical
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
    }
}

public class HorizontalStack: UIStackView {
    public convenience init(
        spacing: CGFloat = 10,
        distribution: Distribution = .fillProportionally,
        alignment: Alignment = .center,
        @StackViewBuilder _ builder: () -> [UIView]) {
            self.init(arrangedSubviews: builder())
            self.axis = .horizontal
            self.spacing = spacing
            self.distribution = distribution
            self.alignment = alignment
        }
}

public extension UIView {
    convenience init(@ViewBuilder _ builder: () -> UIView) {
        self.init(frame: .zero)
        add(builder())
    }
}

open class ProgrammaticView: UIView {
    @ViewBuilder open var body: UIView { UIView() }

    var contentView = UIView()

    public init() {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        updateContentView()
        NotificationCenter.default.post(.ProgrammaticViewInitialized)
    }

    public func updateContentView() {
        // Clean
        contentView.removeFromSuperview()

        // New content
        contentView = body
        add(contentView)
        contentView.prepareForConstraints()

        constrain([
            contentView.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            contentView.leftAnchor.constraint(greaterThanOrEqualTo: leftAnchor),
            contentView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            contentView.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

public extension UILabel {
    convenience init(_ text: String) {
        self.init(frame: .zero)
        self.text = text
    }
}

extension Notification {
    static let ProgrammaticViewInitialized = Notification(name: .ProgrammaticViewInitialized)
}

public class CircleView: UIView {
    public override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.width / 2
        layer.masksToBounds = true
    }
}

public extension UIView {
    func round() -> Self {
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
        layer.masksToBounds = true

        addObserver(self, forKeyPath: #keyPath(bounds), options: .new, context: nil)
        return self
    }

    // This method will be called automatically when the view's bounds change
    override func observeValue(forKeyPath keyPath: String?,
                                    of object: Any?,
                                    change: [NSKeyValueChangeKey: Any]?,
                                    context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(bounds) {
            layer.cornerRadius = min(bounds.width, bounds.height) / 2
        }
    }
}
