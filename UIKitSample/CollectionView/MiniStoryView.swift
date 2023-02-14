import UIKit

protocol MiniStoryViewDelegate: AnyObject {
    func didSelectUserStory(atIndex index: Int)
}

final class MiniStoryView: UIView {
    
    private let cellIdentifier = "cellIdentifier"
    private let verticalInset: CGFloat = 8
    private let horizontalInset: CGFloat = 16
    private let imagesName: [String]
    
    private lazy var flowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 16
        flowLayout.scrollDirection = .horizontal
        flowLayout.sectionInset = UIEdgeInsets(
            top: verticalInset,
            left: horizontalInset,
            bottom: verticalInset,
            right: horizontalInset
        )
        return flowLayout
    }()
    
    weak var delegate: MiniStoryViewDelegate?
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MiniStoryCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.alwaysBounceHorizontal = true
        collectionView.backgroundColor = .systemGroupedBackground
        return collectionView
    }()
    
    init(imagesName: [String]) {
        self.imagesName = imagesName
        super.init(frame: .zero)
        setupCollectionView()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { nil }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let height = collectionView.frame.height - verticalInset * 2
        let width = height
        let itemSize = CGSize(width: width, height: height)
        flowLayout.itemSize = itemSize
    }
    
    private func setupCollectionView() {
        addSubview(collectionView)
        collectionView.fillSuperview()
    }
}

// MARK: - UICollectionViewDataSource

extension MiniStoryView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView .dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? MiniStoryCollectionViewCell else {
            fatalError("Não existe célula registrada para o identificador fornecido")
        }
        let imageName = imagesName[indexPath.item]
        cell.configureCell(imageName: imageName)
        return cell
    }
}

// MARK: - UICollectionViewDelegate

extension MiniStoryView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectUserStory(atIndex: indexPath.item)
    }
}
