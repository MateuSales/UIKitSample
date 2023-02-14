import UIKit

final class TextFieldViewController: BaseViewController, UITextFieldDelegate {
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type Something"
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    private let label: UILabel = .myLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Lore Ipsum"
        textField.delegate = self
    }
        
    override func addViewsInHierarchy() {
        view.addSubviews(textField, label)
    }
    
    override func setupConstraints() {
        textField.center()

        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            textField.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        label.makeConstraints(inRelation: textField)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = textField.text
        return true
    }
}
