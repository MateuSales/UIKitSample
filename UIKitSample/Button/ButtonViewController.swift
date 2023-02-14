import UIKit

final class ButtonViewController: BaseViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Tap Here", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()

    private let label: UILabel = .myLabel

    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Value: \(counter)"
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(label, button)
    }
    
    override func setupConstraints() {
        button.centerVertivallyWithMargins()
        button.heightAnchor.constraint(equalToConstant: 58).isActive = true
        label.makeConstraints(inRelation: button)
    }
    
    @objc
    private func buttonTapped() {
        counter += 1
        label.text = "Value: \(counter)"
        
    }
}
