import Foundation

struct AppModel {
    let sections: [Section]
    
    static var model: AppModel {
        AppModel(
            sections: [
                .init(title: .controls, rows: Row.rowsForControls),
                .init(title: .textViews, rows: Row.rowsForTextViews),
                .init(title: .userInputs, rows: Row.rowsForUserInputs),
                .init(title: .contentViews, rows: Row.rowsForContentViews),
                .init(title: .containerViews, rows: Row.rowsForContainerViews)
            ]
        )
    }
}
