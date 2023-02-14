import UIKit

final class PickerViewController: BaseViewController {
    
    private let pickerView: UIPickerView = {
        let view = UIPickerView()
        return view
    }()
    
    private var states = ["CE", "SP", "RJ", "PE"]

    private var cities = [
        ["Fortaleza", "Crato", "Jeri", "Aquiraz"],
        ["São bento", "Jundiaí", "Ribeirão Preto", "Suzano"],
        ["Niterói","Petropólis", "Macaé", "Paraty" ],
        ["Recife", "Alagoinha", "Condado", "Petrolina"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(pickerView)
    }
    
    override func setupConstraints() {
        pickerView.centerVertivallyWithMargins(32)
    }
}

extension PickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let selectedState = pickerView.selectedRow(inComponent: 0)
        return component == 0 ? states.count : cities[selectedState].count
    }
}

extension PickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let selectedState = pickerView.selectedRow(inComponent: 0)
        return component == 0 ? states[row] : cities[selectedState][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerView.reloadComponent(1)
    }
}
