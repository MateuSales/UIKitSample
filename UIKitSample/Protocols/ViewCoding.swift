protocol ViewCoding {
    func addViewsInHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
}

extension ViewCoding {
    func buildLayout() {
        addViewsInHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }

    func setupAdditionalConfiguration() { }
}
