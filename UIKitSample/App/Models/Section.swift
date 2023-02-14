struct Section {
    enum Title: String {
        case controls = "Controls"
        case textViews = "Text Views"
        case userInputs = "User Inputs"
        case contentViews = "Content Views"
        case containerViews = "Container Views"
    }
    
    let title: Title
    let rows: [Row]
}
