final class ClosureTapGestureRecognizer: UITapGestureRecognizer {
    private var actionClosure: (() -> Void)?
    
    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handleTap))
    }
    
    @objc private func handleTap() {
        actionClosure?()
    }
}
