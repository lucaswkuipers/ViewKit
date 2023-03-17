@resultBuilder
public struct StackViewBuilder {
    public static func buildBlock(_ children: UIView...) -> [UIView] { children }
}

public extension UIStackView {
    convenience init(
        axis: NSLayoutConstraint.Axis,
        spacing: CGFloat = 10,
        distribution: Distribution = .fill,
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

extension UIView: ProgrammaticViewNew {

    public var body2: some UIView {
        self
    }
}

public class VerticalStack: UIStackView {

    public convenience init(
        spacing: CGFloat = 10,
        distribution: Distribution = .fill,
        alignment: Alignment = .center,
        @StackViewBuilder _ builder: () -> [UIView]
    ) {
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
        @StackViewBuilder _ builder: () -> [UIView]
    ) {
        self.init(arrangedSubviews: builder())
        self.axis = .horizontal
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
    }
}
