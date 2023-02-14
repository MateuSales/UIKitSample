import UIKit

final class ImageViewController: BaseViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.backgroundColor = .systemGray
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func addViewsInHierarchy() {
        view.addSubviews(imageView)
    }
    
    override func setupConstraints() {
        imageView.center()
        imageView.size(200)
    }
}

