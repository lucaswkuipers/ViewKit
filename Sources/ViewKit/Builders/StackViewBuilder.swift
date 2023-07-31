@resultBuilder
public struct StackViewBuilder {
    public static func buildBlock(_ children: UIView...) -> [UIView] { children }
    public static func buildBlock(_ children: [UIView]) -> [UIView] { children }
}
