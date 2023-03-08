open class Filler: UIView {
    public init() {
        super.init(frame: .zero)
        maxSize()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
