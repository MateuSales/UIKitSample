import UIKit
import Foundation

final class ActivityIndicatorViewController: BaseViewController {
    
    private let activityIndicator: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView(style: .large)
        activity.hidesWhenStopped = true
        return activity
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.activityIndicator.stopAnimating()
        }
    }
        
    override func addViewsInHierarchy() {
        view.addSubviews(activityIndicator)
    }
    
    override func setupConstraints() {
        activityIndicator.center()        
    }
}

