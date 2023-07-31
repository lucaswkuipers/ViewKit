public class ConstraintBuilder {
    let view: UIView
    var constraints: [NSLayoutConstraint] = []

    public init(view: UIView) {
        self.view = view
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    @discardableResult
    public func activate() -> UIView {
        NSLayoutConstraint.activate(constraints)
        return view
    }
}

public extension UIView {
    var constraint: ConstraintBuilder {
        return ConstraintBuilder(view: self)
    }
}

public extension UIView {
    func addSubviews(@ProgrammaticViewBuilder _ builder: () -> [UIView]) {
        for view in builder() {
            addSubview(view)
        }
    }
}

// MARK: - No Storing

public extension ConstraintBuilder {
    // MARK: - Equal

    @discardableResult
    func leadingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leadingAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leftAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.trailingAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func rightAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.rightAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.topAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.bottomAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerXAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerYAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(equalToConstant c: CGFloat) -> Self {
        let constraint = view.widthAnchor.constraint(equalToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(equalToConstant c: CGFloat) -> Self {
        let constraint = view.heightAnchor.constraint(equalToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(equalTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.heightAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(equalTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.widthAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    // MARK: - Greater

    @discardableResult
    func leadingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func rightAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerXAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerYAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(greaterThanOrEqualToConstant c: CGFloat) -> Self {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(greaterThanOrEqualToConstant c: CGFloat) -> Self {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    // MARK: - Less

    @discardableResult
    func leadingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }


    @discardableResult
    func rightAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerXAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.centerYAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(lessThanOrEqualToConstant c: CGFloat) -> Self {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(lessThanOrEqualToConstant c: CGFloat) -> Self {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualToConstant: c)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraints.append(constraint)
        return self
    }
}

// MARK: - Storing

public extension ConstraintBuilder {
    // MARK: - Equal

    @discardableResult
    func leadingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leadingAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leftAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.trailingAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func rightAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.rightAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.topAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.bottomAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerXAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerYAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(equalToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(equalToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(equalToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(equalToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(equalTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(equalTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(equalTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    // MARK: - Greater

    @discardableResult
    func leadingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func rightAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerXAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerYAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(greaterThanOrEqualToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(greaterThanOrEqualToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    // MARK: - Less

    @discardableResult
    func leadingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func leftAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func trailingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func rightAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func topAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func bottomAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerXAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerXAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func centerYAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.centerYAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(lessThanOrEqualToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func widthAnchor(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(lessThanOrEqualToConstant c: CGFloat, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualToConstant: c)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func heightAnchor(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func firstBaselineAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.firstBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

    @discardableResult
    func lastBaselineAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, storedIn storedConstraint: inout NSLayoutConstraint) -> Self {
        let constraint = view.lastBaselineAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        storedConstraint = constraint
        constraints.append(constraint)
        return self
    }

}
