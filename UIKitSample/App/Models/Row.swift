import Foundation

enum Row: String {
    case slider = "Slider"
    case button = "Button"
    case `switch` = "Switch"
    case pageControl = "Page Control"
    case stepper = "Stepper"
    case segmentControl = "Segmented Control"
    case label = "Label"
    case textView = "Text View"
    case textField = "Text Field"
    case imageView = "Image View"
    case activityIndicator = "Acrtivity Indicator"
    case progressView = "Progress View"
    case pickers = "Picker View"
    case scrollView = "Scroll View"
    case tableView = "Table View"
    case collectionView = "Collection View"
    case pageView = "Page View"
    
    static var rowsForControls: [Row] {
        [
            .slider,
            .button,
            .switch,
            .pageControl,
            .stepper,
            .segmentControl
        ]
    }
    
    static var rowsForTextViews: [Row] {
        [
            .label,
        ]
    }
    
    static var rowsForUserInputs: [Row] {
        [
            .textField,
            .textView
        ]
    }
    
    static var rowsForContentViews: [Row] {
        [
            .imageView,
            .activityIndicator,
            .progressView,
            .pickers
        ]
    }
    
    static var rowsForContainerViews: [Row] {
        [
            .scrollView,
            .tableView,
            .collectionView,
            .pageView
        ]
    }
}
