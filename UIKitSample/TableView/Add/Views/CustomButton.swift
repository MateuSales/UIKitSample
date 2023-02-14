import UIKit

class CustomButton: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        setupUI(title: title)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI(title: String) {
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel?.textAlignment = .center
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .darkGray
        layer.cornerRadius = 10
    }
}
