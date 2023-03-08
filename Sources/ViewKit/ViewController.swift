protocol ViewControllerDelegate {
    func loadView()
    func viewDidLoad()
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
    func didBeginPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?)
    func didEndPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?)
    func didCancelPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?)
    func didChangePresses(_ presses: Set<UIPress>, with event: UIPressesEvent?)
}

extension ViewControllerDelegate {
    func loadView() {}
    func viewDidLoad() {}
    func viewWillLayoutSubviews() {}
    func viewDidLayoutSubviews() {}
    func viewWillAppear(_ animated: Bool) {}
    func viewDidAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}
    func viewDidDisappear(_ animated: Bool) {}
    func didBeginPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?) {}
    func didEndPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?) {}
    func didCancelPresses(_ presses: Set<UIPress>, with event: UIPressesEvent?) {}
    func didChangePresses(_ presses: Set<UIPress>, with event: UIPressesEvent?) {}
}

open class ViewController: UIViewController {
    var delegate: ViewControllerDelegate?
    var hideNavigationBar: Bool = false
    let contentView: UIView

    public init(with view: UIView) {
        self.contentView = view
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func loadView() {
        super.loadView()
        self.view = contentView
        delegate?.loadView()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.viewDidLoad()
    }

    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        delegate?.viewWillLayoutSubviews()
    }

    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        delegate?.viewDidLayoutSubviews()
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        delegate?.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = hideNavigationBar
    }

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delegate?.viewDidAppear(animated)
    }

    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = hideNavigationBar
    }

    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        delegate?.viewDidDisappear(animated)
    }

    public override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesBegan(presses, with: event)
        delegate?.didBeginPresses(presses, with: event)
    }

    public override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesEnded(presses, with: event)
        delegate?.didEndPresses(presses, with: event)
    }

    public override func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesCancelled(presses, with: event)
        delegate?.didCancelPresses(presses, with: event)
    }

    public override func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        super.pressesChanged(presses, with: event)
        delegate?.didChangePresses(presses, with: event)
    }
}
