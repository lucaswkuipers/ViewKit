public func For<T: Collection, Content: UIView>(
    _ items: T,
    _ builder: (T.Element) -> Content
) -> [Content] {
    return items.map(builder)
}

@resultBuilder
public struct StackViewBuilder {
    public static func buildBlock(_ children: UIView...) -> [UIView] { children }
    public static func buildBlock(_ children: [UIView]) -> [UIView] { children }
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

public extension UIStackView {
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }

    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> Self {
        self.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }

    func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> Self {
        self.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
}
