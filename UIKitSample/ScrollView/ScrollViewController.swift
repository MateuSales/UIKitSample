import UIKit

final class ScrollViewController: BaseViewController {
    
    let scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .white
        return scroll
    }()
    
    let image: UIImageView = {
        let imgView = UIImageView(image: UIImage(named: "children"))
        return imgView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.delegate = self
        view = scroll
        scroll.minimumZoomScale = 0.3
        scroll.maximumZoomScale = 1
    }
    
    override func addViewsInHierarchy() {
        scroll.addSubview(image)
    }
    
    override func setupConstraints() {
        scroll.contentSize = image.frame.size
    }
}

extension ScrollViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
}
