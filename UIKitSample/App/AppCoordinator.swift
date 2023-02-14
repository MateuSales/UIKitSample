import UIKit

final class AppCoordinator {
    weak var view: UIViewController?
    
    func push(row: Row) {
        var viewController = UIViewController()
        
        switch row {
        case .slider:
            viewController = SliderViewController()
        case .button:
            viewController = ButtonViewController()
        case .switch:
            viewController = SwitchViewController()
        case .pageControl:
            viewController = PageControlViewController()
        case .stepper:
            viewController = StepperViewController()
        case .segmentControl:
            viewController = SegmentedControlViewController()
        case .label:
            viewController = LabelViewController()
        case .textView:
            viewController = TextViewController()
        case .textField:
            viewController = TextFieldViewController()
        case .imageView:
            viewController = ImageViewController()
        case .activityIndicator:
            viewController = ActivityIndicatorViewController()
        case .progressView:
            viewController = ProgressViewController()
        case .pickers:
            viewController = PickerViewController()
        case .scrollView:
            viewController = ScrollViewController()
        case .tableView:
            viewController = TableViewController()
        case .collectionView:
            viewController = MessagesViewController()
        case .pageView:
            viewController = SomeViewController()
        }
        
        viewController.title = row.rawValue
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
}
