import UIKit

final class PageControlViewController: BaseViewController {
    private let pageControl: UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 5
        page.pageIndicatorTintColor = .systemGray
        page.currentPageIndicatorTintColor = .systemBlue
        return page
    }()
    
    private let label: UILabel = .myLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Current Page: 0"
        
        pageControl.addTarget(self, action: #selector(pageControlTapped), for: .valueChanged)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(pageControl, label)
    }
    
    override func setupConstraints() {
        pageControl.center()
        label.makeConstraints(inRelation: pageControl)
    }
    
    @objc
    private func pageControlTapped() {
        label.text = "Current Page: \(pageControl.currentPage)"
    }
}
