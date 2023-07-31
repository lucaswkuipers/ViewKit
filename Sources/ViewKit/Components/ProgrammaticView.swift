public protocol ProgrammaticView {
    @ProgrammaticViewBuilder var body: UIView { get }
}

extension UIView: ProgrammaticView {
    public var body: UIView {
        self
    }
}

public extension ProgrammaticView {
    func embeddedInViewController() -> UIViewController {
        return ViewController(with: self)
    }
}
