import UIKit

final class MessagesViewController: BaseViewController {

    private let miniStoryView = MiniStoryView(imagesName: ["logo", "logo", "logo"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miniStoryView.backgroundColor = .lightGray
        miniStoryView.delegate = self
    }
    
    override func addViewsInHierarchy() {
        view.addSubview(miniStoryView)
    }
    
    override func setupConstraints() {
        miniStoryView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                miniStoryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                miniStoryView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                miniStoryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                miniStoryView.heightAnchor.constraint(equalToConstant: 350)
            ]
        )
    }
}

// MARK: - MiniStoryViewDelegate

extension MessagesViewController: MiniStoryViewDelegate {
    func didSelectUserStory(atIndex index: Int) {
        print(index)
    }
}
