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
public protocol ProgrammaticViewNew {

    associatedtype Body: ProgrammaticViewNew&UIView

    @ViewBuilder var body2: Body { get }
}

extension ProgrammaticViewNew {

    public func attach(to view: UIView) {
        let contentView = body2
        view.addSubview(contentView)
        contentView.prepareForConstraints()
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor),
            contentView.leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor),
            contentView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor),
            contentView.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor),
            contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        NotificationCenter.default.post(.ProgrammaticViewContentUpdated)
    }
}

open class ProgrammaticView {
    @ViewBuilder open var body: UIView { UIView() }

    var contentView = UIView()

    public init() {
//        super.init(frame: .zero)
//        backgroundColor = .systemBackground
//        updateContentView()
    }

    public func updateContentView() {
        contentView.removeFromSuperview()
//
        contentView = body
//        add(contentView)
//        contentView.prepareForConstraints()
//
//        constrain([
//            contentView.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
//            contentView.leftAnchor.constraint(greaterThanOrEqualTo: leftAnchor),
//            contentView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
//            contentView.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor),
//            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
//            contentView.centerYAnchor.constraint(equalTo: centerYAnchor),
//        ])
//
//        NotificationCenter.default.post(.ProgrammaticViewContentUpdated)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
