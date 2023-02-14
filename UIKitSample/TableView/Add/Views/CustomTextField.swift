import UIKit

class CustomTextField: UITextField {
    init(placeHolder: String, keyboardType: UIKeyboardType) {
        super.init(frame: .zero)
        setupUI(placeHolder: placeHolder, keyboardType: keyboardType)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI(placeHolder: String, keyboardType: UIKeyboardType) {
        font = UIFont.systemFont(ofSize: 20, weight: .medium)
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        placeholder = placeHolder
        textColor = .darkGray
        textAlignment = .center
        self.keyboardType = keyboardType
    }
}
