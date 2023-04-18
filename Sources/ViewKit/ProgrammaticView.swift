@resultBuilder
public struct ViewBuilder {
    public static func buildBlock(_ child: UIView) -> UIView { child }
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

        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        }

        updateContentView()
    }

    public func updateContentView() {
        contentView.removeFromSuperview()

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

        NotificationCenter.default.post(.ProgrammaticViewContentUpdated)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
