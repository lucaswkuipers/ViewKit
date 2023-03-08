extension Notification {
    static let ProgrammaticViewContentUpdated = Notification(name: .ProgrammaticViewContentUpdated)
}

extension Notification.Name {
    static let ProgrammaticViewContentUpdated = Notification.Name("ProgrammaticViewContentUpdated")
}

func when(_ notificationName: Notification.Name, do action: @escaping () -> Void) {
    NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: nil) { _ in
        action()
    }
}
