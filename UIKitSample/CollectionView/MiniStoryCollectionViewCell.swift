import UIKit

final class MiniStoryCollectionViewCell: UICollectionViewCell {
    
    private let profileImageView = ProfileImageView(borderShape: .circle)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProfileImageView()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { nil }
    
    private func setupProfileImageView() {
        contentView.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                profileImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                profileImageView.topAnchor.constraint(equalTo: topAnchor),
                profileImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }
    
    func configureCell(imageName: String) {
        profileImageView.image = UIImage(named: imageName)
    }
}
