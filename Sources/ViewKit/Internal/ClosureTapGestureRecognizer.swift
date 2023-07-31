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

final class ClosureLongPressGestureRecognizer: UILongPressGestureRecognizer {
    private var actionClosure: (() -> Void)?

    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handleLongPress))
    }

    @objc private func handleLongPress() {
        actionClosure?()
    }
}

final class ClosureSwipeGestureRecognizer: UISwipeGestureRecognizer {
    private var actionClosure: (() -> Void)?

    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handleSwipe))
    }

    @objc private func handleSwipe() {
        actionClosure?()
    }
}

final class ClosurePinchGestureRecognizer: UIPinchGestureRecognizer {
    private var actionClosure: (() -> Void)?

    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handlePinch))
    }

    @objc private func handlePinch() {
        actionClosure?()
    }
}

final class ClosureRotationGestureRecognizer: UIRotationGestureRecognizer {
    private var actionClosure: (() -> Void)?

    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handleRotation))
    }

    @objc private func handleRotation() {
        actionClosure?()
    }
}

final class ClosurePanGestureRecognizer: UIPanGestureRecognizer {
    private var actionClosure: (() -> Void)?

    func addAction(_ closure: @escaping () -> Void) {
        actionClosure = closure
        addTarget(self, action: #selector(handlePan))
    }

    @objc private func handlePan() {
        actionClosure?()
    }
}
