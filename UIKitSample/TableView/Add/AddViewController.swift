import UIKit

protocol AddViewControllerDelegate: AnyObject {
    func didTapButton(name: String, number: String)
}

class AddViewController: UIViewController {
    weak var delegate: AddViewControllerDelegate?

    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 40
        stack.axis = .vertical
        return stack
    }()
    
    private let nameTextField = CustomTextField(placeHolder: "Digite o nome", keyboardType: .namePhonePad)
    private let numberTextField = CustomTextField(placeHolder: "Digite o número", keyboardType: .numberPad)
    private let addButton = CustomButton(title: "Adicionar")

    override func viewDidLoad() {
        super.viewDidLoad()
        buildLayout()
    }
}

extension AddViewController: ViewCoding {
    func addViewsInHierarchy() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(numberTextField)
        stackView.addArrangedSubview(addButton)
    }

    func setupConstraints() {
        func makeConstraints(someView: UIView) -> [NSLayoutConstraint] {
            [
                someView.heightAnchor.constraint(equalToConstant: 50),
                someView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.8)
            ]
        }

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate(makeConstraints(someView: nameTextField))
        NSLayoutConstraint.activate(makeConstraints(someView: numberTextField))
        NSLayoutConstraint.activate(makeConstraints(someView: addButton))
    }

    func setupAdditionalConfiguration() {
        addButton.addTarget(self, action: #selector(didTapAddButton), for: .touchUpInside)
        view.backgroundColor = .white
    }

    @objc
    private func didTapAddButton() {
        if let name = nameTextField.text,
           let number = numberTextField.text {
            delegate?.didTapButton(name: name, number: number)
            navigationController?.popViewController(animated: true)
        }
    }
}
