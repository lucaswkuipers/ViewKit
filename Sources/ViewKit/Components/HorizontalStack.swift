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
