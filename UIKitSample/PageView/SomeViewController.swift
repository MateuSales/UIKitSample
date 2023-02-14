import UIKit

final class SomeViewController: UIViewController {

    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()

    private let myPageViewController = PageViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        view.addSubview(containerView)
        containerView.fillSuperview()
        
        addChild(myPageViewController)
        myPageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(myPageViewController.view)
        myPageViewController.view.fillSuperview()
        myPageViewController.didMove(toParent: self)
    }
}
