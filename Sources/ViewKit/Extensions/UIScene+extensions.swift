@available(iOS 13, *)
extension UIScene {
    func window(with rootViewController: UIViewController) -> UIWindow? {
        guard let windowScene = (self as? UIWindowScene) else { return nil }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        return window
    }
}
