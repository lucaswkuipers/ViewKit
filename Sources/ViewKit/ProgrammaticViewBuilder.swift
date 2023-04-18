@resultBuilder
public struct ProgrammaticViewBuilder {
    public static func buildBlock(_ child: UIView) -> UIView { child }
    public static func buildBlock(_ children: UIView...) -> UIView {
        let container = UIView()

        children.forEach { child in
            container.addSubview(child)

            child.prepareForConstraints()

            container.add(child)

            container.constrain([
                child.topAnchor.constraint(greaterThanOrEqualTo: container.topAnchor),
                child.leftAnchor.constraint(greaterThanOrEqualTo: container.leftAnchor),
                child.bottomAnchor.constraint(lessThanOrEqualTo: container.bottomAnchor),
                child.rightAnchor.constraint(lessThanOrEqualTo: container.rightAnchor),
                child.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                child.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            ])
        }

        return container
    }
}
