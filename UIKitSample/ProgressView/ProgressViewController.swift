import UIKit

final class ProgressViewController: BaseViewController {
    
    private let progressView: UIProgressView = {
        let view = UIProgressView()
        view.progressTintColor = .systemBlue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.progressView.setProgress(0.8, animated: true)
        }
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(progressView)
    }
    
    override func setupConstraints() {
        progressView.centerVertivallyWithMargins(32)
    }
}

