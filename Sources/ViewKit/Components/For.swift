public func For<T: Collection, Content: UIView>(
    _ items: T,
    _ builder: (T.Element) -> Content
) -> [Content] {
    return items.map(builder)
}
