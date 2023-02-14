import UIKit

final class SwitchViewController: BaseViewController {
    
    private let mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.onTintColor = .systemBlue
        return mySwitch
    }()
    
    private let label: UILabel = .myLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Desligado"
                
        mySwitch.addTarget(self, action: #selector(switchTapped), for: .valueChanged)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(mySwitch, label)
    }
    
    override func setupConstraints() {
        mySwitch.center()
        label.makeConstraints(inRelation: mySwitch)
    }
    
    @objc
    private func switchTapped() {
        label.text = mySwitch.isOn ? "Ligado" : "Desligado"
    }
}
