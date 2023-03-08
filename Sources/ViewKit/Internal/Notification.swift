import Foundation

typealias Action = () -> Void

extension Notification.Name {
    static let ProgrammaticViewInitialized = Notification.Name("ProgrammaticViewInitialized")
}

func when(_ notificationName: Notification.Name, do action: @escaping Action) {
    NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: nil) { _ in
        action()
    }
}
