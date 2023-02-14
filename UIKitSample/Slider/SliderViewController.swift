import UIKit

final class SliderViewController: BaseViewController {
    
    private let slider: UISlider = {
        let slider = UISlider()
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.tintColor = .systemBlue
        slider.thumbTintColor = .systemBackground
        slider.minimumValueImage = UIImage(systemName: "sun.min")
        slider.maximumValueImage = UIImage(systemName: "sun.max.fill")
        return slider
    }()

    private let label: UILabel = .myLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slider.addTarget(self, action: #selector(valueDidChange), for: .valueChanged)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(slider, label)
    }
    
    override func setupConstraints() {
        label.makeConstraints(inRelation: slider)
        slider.centerVertivallyWithMargins()
    }
    
    @objc
    private func valueDidChange() {
        label.text = String(format: "%.2f", slider.value)
    }
}
