import UIKit

final class StepperViewController: BaseViewController {
    
    private let stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.value = 0
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        stepper.stepValue =  2
        return stepper
    }()
    
    private let label: UILabel = .myLabel
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Value: \(Int(stepper.value))"

        stepper.addTarget(self, action: #selector(stepperChanged), for: .valueChanged)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(stepper, label)
    }
    
    override func setupConstraints() {
        stepper.center()
        label.makeConstraints(inRelation: stepper)
    }
    
    @objc
    private func stepperChanged() {
        label.text = "Value: \(Int(stepper.value))"
    }
}
