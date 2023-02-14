import UIKit

final class SegmentedControlViewController: BaseViewController {
    
    private let segmentedControl: UISegmentedControl = {
        return UISegmentedControl(items: ["Mateus", "Sales", "Xuxu"])
    }()
    
    private let label: UILabel = .myLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = segmentedControl.titleForSegment(at: 0)
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentedChanged), for: .valueChanged)
    }
    
    override func addViewsInHierarchy() {
        view.addSubviews(segmentedControl, label)
    }
    
    override func setupConstraints() {
        segmentedControl.center()
        label.makeConstraints(inRelation: segmentedControl)
    }
    
    @objc
    private func segmentedChanged() {
        label.text = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
    }
}
